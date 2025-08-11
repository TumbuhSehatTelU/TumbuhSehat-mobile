import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/auth_result.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/repositories/auth_repository.dart';

class GetActiveSessionUseCase {
  final AuthRepository _repository;
  final AuthLocalDataSource _localDataSource;

  GetActiveSessionUseCase(this._repository, this._localDataSource);

  Future<AuthResult?> call() async {
    final activeParent = await _repository.getActiveParent();

    if (activeParent == null) {
      return null;
    }

    final familyId = await _localDataSource.getActiveFamilyId();
    if (familyId == null) {
      return null;
    }

    try {
      final family = await _repository.getFamilyByPhone(familyId);
      return AuthResult(family: family, activeParent: activeParent);
    } catch (e) {
      return null;
    }
  }
}
