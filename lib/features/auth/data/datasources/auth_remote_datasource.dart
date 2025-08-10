import 'package:mobile_tumbuh_sehat/features/auth/data/models/family_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/parent_model.dart';

abstract class AuthRemoteDataSource {
  Future<FamilyModel> login({
    required String phone,
    required String name,
    required String password,
  });

  Future<void> registerNewFamily({
    required FamilyModel family,
    required String password,
  });

  Future<void> joinExistingFamily({
    required String familyId,
    required ParentModel newParent,
    required String password,
  });
}
