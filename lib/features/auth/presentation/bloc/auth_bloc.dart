import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_tumbuh_sehat/app/core/error/exceptions.dart';
import 'package:mobile_tumbuh_sehat/app/core/network/network_info.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/get_active_session_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/register_new_family_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/request_otp_for_join_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/search_family_by_phone_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/verify_otp_for_join_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SearchFamilyByPhoneUseCase _searchFamilyByPhoneUseCase;
  final RegisterNewFamilyUseCase _registerNewFamilyUseCase;
  final GetActiveSessionUseCase _getActiveSessionUseCase;
  final RequestOtpForJoinUseCase _requestOtpForJoinUseCase;
  final VerifyOtpForJoinUseCase _verifyOtpForJoinUseCase;
  final NetworkInfo _networkInfo;

  AuthBloc({
    required SearchFamilyByPhoneUseCase searchFamilyByPhoneUseCase,
    required RegisterNewFamilyUseCase registerNewFamilyUseCase,
    required GetActiveSessionUseCase getActiveSessionUseCase,
    required RequestOtpForJoinUseCase requestOtpForJoinUseCase,
    required VerifyOtpForJoinUseCase verifyOtpForJoinUseCase,
    required NetworkInfo networkInfo,
  }) : _searchFamilyByPhoneUseCase = searchFamilyByPhoneUseCase,
       _registerNewFamilyUseCase = registerNewFamilyUseCase,
       _getActiveSessionUseCase = getActiveSessionUseCase,
       _requestOtpForJoinUseCase = requestOtpForJoinUseCase,
       _verifyOtpForJoinUseCase = verifyOtpForJoinUseCase,
       _networkInfo = networkInfo,
       super(const AuthState.initial()) {
    on<AuthStatusChecked>(_onAuthStatusChecked);
    on<FamilyExistenceChecked>(_onFamilyExistenceChecked);
    on<NewFamilyRegistered>(_onNewFamilyRegistered);
    on<JoinOtpRequested>(_onJoinOtpRequested);
    on<JoinOtpVerified>(_onJoinOtpVerified);
  }

  Future<void> _onAuthStatusChecked(
    AuthStatusChecked event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final authResult = await _getActiveSessionUseCase();
      if (authResult != null) {
        emit(
          AuthState.authenticated(
            family: authResult.family,
            activeParent: authResult.activeParent,
          ),
        );
      } else {
        emit(const AuthState.unauthenticated());
      }
    } catch (e) {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onFamilyExistenceChecked(
    FamilyExistenceChecked event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      final family = await _searchFamilyByPhoneUseCase(event.phone);
      if (await _networkInfo.isConnected) {
        add(JoinOtpRequested(event.phone));
      } else {
        emit(AuthState.familyFound(family));
      }
    } catch (e) {
      emit(const AuthState.failure('No handphone tidak terdaftar.'));
    }
  }

  Future<void> _onJoinOtpRequested(
    JoinOtpRequested event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _requestOtpForJoinUseCase(event.phone);
      emit(AuthState.otpVerificationRequired(event.phone));
    } catch (e) {
      emit(const AuthState.failure('Gagal mengirim OTP. Silakan coba lagi.'));
    }
  }

  Future<void> _onJoinOtpVerified(
    JoinOtpVerified event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      await _verifyOtpForJoinUseCase(
        VerifyOtpForJoinParams(phone: event.phone, otp: event.otp),
      );
      final family = await _searchFamilyByPhoneUseCase(event.phone);
      emit(AuthState.familyFound(family));
    } catch (e) {
      if (e is OtpException) {
        emit(const AuthState.failure('Kode OTP salah.'));
      } else {
        emit(const AuthState.failure('Terjadi kesalahan. Silakan coba lagi.'));
      }
    }
  }

  Future<void> _onNewFamilyRegistered(
    NewFamilyRegistered event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      await _searchFamilyByPhoneUseCase(event.phone);
      emit(const AuthState.failure('Nomor telepon ini sudah terdaftar.'));
    } catch (_) {
      try {
        await _registerNewFamilyUseCase(
          RegisterNewFamilyParams(
            phone: event.phone,
            password: event.password,
            newParentData: event.newParentData,
            childrenData: event.childrenData,
          ),
        );
        emit(const AuthState.unauthenticated());
      } catch (e) {
        emit(
          const AuthState.failure(
            'Gagal mendaftarkan akun. Silakan coba lagi.',
          ),
        );
      }
    }
  }
}
