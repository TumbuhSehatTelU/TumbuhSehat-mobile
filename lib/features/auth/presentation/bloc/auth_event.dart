import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/child.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authStatusChecked() = AuthStatusChecked;

  const factory AuthEvent.familyExistenceChecked(String phone) =
      FamilyExistenceChecked;

  const factory AuthEvent.newFamilyRegistered({
    required String phone,
    required String password,
    required Parent newParentData,
    required List<Child> childrenData,
  }) = NewFamilyRegistered;

  const factory AuthEvent.logoutRequested() = LogoutRequested;
}
