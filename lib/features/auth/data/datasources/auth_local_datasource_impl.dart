import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_tumbuh_sehat/app/core/error/exceptions.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/family_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/parent_model.dart';

const String familyBoxName = 'family_box';
const String sessionBoxName = 'session_box';
const String activeParentKey = 'active_parent_key';
const String activeFamilyIdKey = 'active_family_id_key';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final Box familyBox;
  final Box sessionBox;

  AuthLocalDataSourceImpl({required this.familyBox, required this.sessionBox});

  @override
  Future<FamilyModel> getFamilyByPhone(String phone) async {
    final familyJson = familyBox.get(phone);
    try {
      if (familyJson != null) {
        return FamilyModel.fromJson(Map<String, dynamic>.from(familyJson));
      } else {
        throw CacheException(
          message: 'Family with phone number $phone not found in local cache.',
        );
      }
    } catch (e) {
      throw CacheException(message: 'Failed to read from familyBox: $e');
    }
  }

  @override
  Future<void> saveFamily(FamilyModel family) async {
    try {
      await familyBox.put(family.familyId, family.toJson());
    } catch (e) {
      throw CacheException(message: 'Failed to save family to local cache: $e');
    }
  }

  @override
  Future<void> addParentToFamily({
    required String familyId,
    required ParentModel newParent,
  }) async {
    try {
      final existingFamilyModel = await getFamilyByPhone(familyId);

      final updatedParents = List<ParentModel>.from(existingFamilyModel.parents)
        ..add(newParent);

      final updatedFamily = existingFamilyModel.copyWith(
        parents: updatedParents,
      );

      await saveFamily(updatedFamily);
    } on CacheException {
      rethrow;
    } catch (e) {
      throw CacheException(message: 'Failed to add parent to family: $e');
    }
  }

  @override
  Future<ParentModel?> getActiveParent() async {
    try {
      final parentJson = sessionBox.get(activeParentKey);
      if (parentJson != null) {
        return ParentModel.fromJson(Map<String, dynamic>.from(parentJson));
      }
      return null;
    } catch (e) {
      throw CacheException(message: 'Failed to get active parent session: $e');
    }
  }

  @override
  Future<String?> getActiveFamilyId() async {
    try {
      return sessionBox.get(activeFamilyIdKey);
    } catch (e) {
      throw CacheException(message: 'Failed to get active family session: $e');
    }
  }

  @override
  Future<void> saveActiveParent({
    required ParentModel parent,
    required String familyId,
  }) async {
    try {
      await sessionBox.put(activeParentKey, parent.toJson());
      await sessionBox.put(activeFamilyIdKey, familyId);
    } catch (e) {
      throw CacheException(message: 'Failed to save active parent session: $e');
    }
  }

  @override
  Future<void> clearActiveParent() async {
    try {
      await sessionBox.delete(activeParentKey);
      await sessionBox.delete(activeFamilyIdKey);
    } catch (e) {
      throw CacheException(
        message: 'Failed to clear active parent session: $e',
      );
    }
  }
}
