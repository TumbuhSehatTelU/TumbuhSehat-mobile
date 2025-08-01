import 'package:mobile_tumbuh_sehat/features/auth/data/models/family_model.dart';

abstract class AuthRemoteDataSource {
  Future<FamilyModel> login({required String phone, required String password});

  Future<void> register(
      {required FamilyModel family, required String password});
}
