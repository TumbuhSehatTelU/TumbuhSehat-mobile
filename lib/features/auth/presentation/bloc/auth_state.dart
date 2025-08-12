import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/family.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.authenticated({
    required Family family,
    required Parent activeParent,
  }) = _Authenticated;

  const factory AuthState.otpVerificationRequired(String phone) =
      _OtpVerificationRequired;

  const factory AuthState.unauthenticated() = _Unauthenticated;

  const factory AuthState.familyFound(Family family) = _FamilyFound;

  const factory AuthState.failure(String message) = _Failure;
}
