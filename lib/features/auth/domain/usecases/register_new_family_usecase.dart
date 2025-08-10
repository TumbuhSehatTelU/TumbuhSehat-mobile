import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/child.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/repositories/auth_repository.dart';

class RegisterNewFamilyUseCase {
  final AuthRepository _repository;

  RegisterNewFamilyUseCase(this._repository);

  Future<void> call(RegisterNewFamilyParams params) async {
    return await _repository.registerNewFamily(
      phone: params.phone,
      password: params.password,
      newParentData: params.newParentData,
      childrenData: params.childrenData,
    );
  }
}

class RegisterNewFamilyParams {
  final String phone;
  final String password;
  final Parent newParentData;
  final List<Child> childrenData;

  RegisterNewFamilyParams({
    required this.phone,
    required this.password,
    required this.newParentData,
    required this.childrenData,
  });
}
