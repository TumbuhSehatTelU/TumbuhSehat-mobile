import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/register_new_family_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/search_family_by_phone_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SearchFamilyByPhoneUseCase _searchFamilyByPhoneUseCase;
  final RegisterNewFamilyUseCase _registerNewFamilyUseCase;

  AuthBloc({
    required SearchFamilyByPhoneUseCase searchFamilyByPhoneUseCase,
    required RegisterNewFamilyUseCase registerNewFamilyUseCase,
  }) : _searchFamilyByPhoneUseCase = searchFamilyByPhoneUseCase,
       _registerNewFamilyUseCase = registerNewFamilyUseCase,
       super(const AuthState.initial()) {
    on<FamilyExistenceChecked>(_onFamilyExistenceChecked);
    on<NewFamilyRegistered>(_onNewFamilyRegistered);
  }

  Future<void> _onFamilyExistenceChecked(
    FamilyExistenceChecked event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      final family = await _searchFamilyByPhoneUseCase(event.phone);
      emit(AuthState.familyFound(family));
    } catch (e) {
      emit(const AuthState.failure('Nomor telepon tidak terdaftar.'));
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
