import 'package:mobile_tumbuh_sehat/features/auth/data/models/family_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/parent_model.dart';

abstract class AuthRemoteDataSource {
  // POST /auth/login
  Future<FamilyModel> login({
    required String phone,
    required String name,
    required String password,
  });

  // POST /auth/register
  Future<void> registerNewFamily({
    required FamilyModel family,
    required String password,
  });

  // POST /family/{familyId}/join
  Future<void> joinExistingFamily({
    required String familyId,
    required ParentModel newParent,
    required String password,
  });

  // POST /auth/otp/request-join
  Future<void> requestOtpForJoin(String phone);

  // POST /auth/otp/verify-join
  Future<void> verifyOtpForJoin({required String phone, required String otp});

  // GET /family/{familyId}
  Future<FamilyModel> getFamilyByPhone(String phone);

  // POST /auth/logout
  Future<void> logout();
}
