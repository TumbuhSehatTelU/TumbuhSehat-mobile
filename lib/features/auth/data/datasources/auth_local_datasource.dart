import 'package:mobile_tumbuh_sehat/features/auth/data/models/family_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/parent_model.dart';

abstract class AuthLocalDataSource {
  Future<FamilyModel> getFamily(String familyId);

  Future<void> saveFamily(FamilyModel family);

  Future<void> saveActiveParent(ParentModel parent);

  Future<ParentModel?> getActiveParent();

  Future<void> clearActiveParent();
}
