import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/family.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/repositories/auth_repository.dart';

class SearchFamilyByPhoneUseCase {
  final AuthRepository _repository;

  SearchFamilyByPhoneUseCase(this._repository);

  Future<Family> call(String phone) async {
    return await _repository.getFamilyByPhone(phone);
  }
}
