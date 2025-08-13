import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/child.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authStatusChecked() = AuthStatusChecked;

  const factory AuthEvent.familyExistenceChecked(String phone) =
      FamilyExistenceChecked;

  const factory AuthEvent.newFamilySubmitted({
    required String phone,
    required String password,
    required Parent newParentData,
    required List<Child> childrenData,
  }) = NewFamilySubmitted;

  const factory AuthEvent.joinFamilySubmitted({
    required String familyPhone,
    required String password,
    required Parent newParentData,
  }) = JoinFamilySubmitted;

  const factory AuthEvent.joinOtpRequested(String phone) = JoinOtpRequested;

  const factory AuthEvent.joinOtpVerified({
    required String phone,
    required String otp,
  }) = JoinOtpVerified;

  const factory AuthEvent.logoutRequested() = LogoutRequested;
}
