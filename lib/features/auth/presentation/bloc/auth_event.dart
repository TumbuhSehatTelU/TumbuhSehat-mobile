import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/child.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/enums/maternal_status.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/enums/parent_role.dart';
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

    const factory AuthEvent.registrationStep1Completed({
    required String name,
    String? phone,
    required String password,
    required ParentRole role,
    required DateTime dateOfBirth,
  }) = RegistrationStep1Completed;

  const factory AuthEvent.maternalStatusUpdated(MaternalStatus maternalStatus) =
      MaternalStatusUpdated;

  /// Event untuk menyelesaikan registrasi dan menyimpan semua data.
  const factory AuthEvent.registrationFinalized({
    String? familyPhone, // Diperlukan untuk alur join family
    @Default([]) List<Child> children,
  }) = RegistrationFinalized;

  const factory AuthEvent.logoutRequested() = LogoutRequested;
}
