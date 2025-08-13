import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/repositories/auth_repository.dart';

class JoinExistingFamilyUseCase {
  final AuthRepository _repository;

  JoinExistingFamilyUseCase(this._repository);

  Future<void> call(JoinExistingFamilyParams params) async {
    return await _repository.joinExistingFamily(
      familyPhone: params.familyPhone,
      password: params.password,
      newParentData: params.newParentData,
    );
  }
}

class JoinExistingFamilyParams {
  final String familyPhone;
  final String password;
  final Parent newParentData;

  JoinExistingFamilyParams({
    required this.familyPhone,
    required this.password,
    required this.newParentData,
  });
}
