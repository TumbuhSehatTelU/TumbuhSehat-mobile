import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_tumbuh_sehat/app/core/error/exceptions.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/family_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/parent_model.dart';

const String familyBoxName = 'family_box';
const String sessionBoxName = 'session_box';
const String activeParentKey = 'active_parent_key';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final Box familyBox;
  final Box sessionBox;

  AuthLocalDataSourceImpl({required this.familyBox, required this.sessionBox});

  @override
  Future<FamilyModel> getFamilyByPhone(String phone) async {
    final familyJson = familyBox.get(phone);
    if (familyJson != null) {
      return FamilyModel.fromJson(Map<String, dynamic>.from(familyJson));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> saveFamily(FamilyModel family) async {
    await familyBox.put(family.familyId, family.toJson());
  }

  @override
  Future<void> addParentToFamily({
    required String familyId,
    required ParentModel newParent,
  }) async {
    final existingFamilyModel = await getFamilyByPhone(familyId);

    final updatedParents = List<ParentModel>.from(existingFamilyModel.parents)
      ..add(newParent);

    final updatedFamily = existingFamilyModel.copyWith(parents: updatedParents);

    await saveFamily(updatedFamily);
  }

  @override
  Future<ParentModel?> getActiveParent() async {
    final parentJson = sessionBox.get(activeParentKey);
    if (parentJson != null) {
      return ParentModel.fromJson(Map<String, dynamic>.from(parentJson));
    }
    return null;
  }

  @override
  Future<void> saveActiveParent(ParentModel parent) async {
    await sessionBox.put(activeParentKey, parent.toJson());
  }

  @override
  Future<void> clearActiveParent() async {
    await sessionBox.delete(activeParentKey);
  }
}
