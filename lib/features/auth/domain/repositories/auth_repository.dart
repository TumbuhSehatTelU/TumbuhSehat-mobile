import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/auth_result.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/child.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';

abstract class AuthRepository {
  Future<AuthResult> login({
    required String phone,
    required String password,
  });

  Future<void> register({
    required String phone,
    required String password,
    required Parent newParentData,
    required List<Child> childrenData,
  });

  Future<Parent?> getActiveParent();

  Future<void> saveActiveParent(Parent parent);

  Future<void> logout();
}
