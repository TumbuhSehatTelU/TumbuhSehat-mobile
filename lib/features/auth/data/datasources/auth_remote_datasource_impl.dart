// lib/features/auth/data/datasources/auth_remote_datasource_impl.dart

import 'package:dio/dio.dart';
import 'package:mobile_tumbuh_sehat/app/core/config/app_config.dart';
import 'package:mobile_tumbuh_sehat/app/core/error/exceptions.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/family_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/parent_model.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<FamilyModel> login({
    required String phone,
    required String name,
    required String password,
  }) async {
    // POSTPONE ENDPOINT
    const endpoint = '${AppConfig.baseUrl}/auth/login';

    try {
      final response = await dio.post(
        endpoint,
        data: {'phone': phone, 'name': name, 'password': password},
      );

      if (response.statusCode == 200) {
        return FamilyModel.fromJson(response.data['data']);
      } else {
        throw ServerException(
          message:
              'Login failed with status code: ${response.statusCode} at $endpoint',
        );
      }
    } on DioException catch (e) {
      throw ServerException(
        message: 'DioException on login at $endpoint: ${e.message}',
      );
    }
  }

  @override
  Future<void> registerNewFamily({
    required FamilyModel family,
    required String password,
  }) async {
    // POSTPONE ENDPOINT
    const endpoint = '${AppConfig.baseUrl}/auth/register';

    try {
      final requestData = family.toJson()..addAll({'password': password});
      final response = await dio.post(endpoint, data: requestData);

      if (response.statusCode != 201) {
        throw ServerException(
          message:
              'Register new family failed with status code: ${response.statusCode} at $endpoint',
        );
      }
    } on DioException catch (e) {
      throw ServerException(
        message: 'DioException on register at $endpoint: ${e.message}',
      );
    }
  }

  @override
  Future<void> joinExistingFamily({
    required String familyId,
    required ParentModel newParent,
    required String password,
  }) async {
    if (AppConfig.baseUrl.isEmpty) {
      throw ServerException(
        message: 'Remote join family attempted while in offline mode.',
      );
    }

    // POSTPONE ENDPOINT
    final endpoint = '${AppConfig.baseUrl}/family/$familyId/join';

    try {
      final requestData = newParent.toJson()..addAll({'password': password});
      final response = await dio.post(endpoint, data: requestData);

      if (response.statusCode != 200) {
        throw ServerException(
          message:
              'Join existing family failed with status code: ${response.statusCode} at $endpoint',
        );
      }
    } on DioException catch (e) {
      throw ServerException(
        message: 'DioException on join family at $endpoint: ${e.message}',
      );
    }
  }

  @override
  Future<FamilyModel> getFamilyByPhone(String phone) async {
    if (AppConfig.baseUrl.isEmpty) {
      throw ServerException(
        message: 'Remote get family attempted while in offline mode.',
      );
    }

    // POSTPONE ENDPOINT
    final endpoint = '${AppConfig.baseUrl}/family/$phone';

    try {
      final response = await dio.get(endpoint);
      if (response.statusCode == 200) {
        return FamilyModel.fromJson(response.data['data']);
      } else {
        throw ServerException(
          message:
              'Get family failed with status code: ${response.statusCode} at $endpoint',
        );
      }
    } on DioException catch (e) {
      throw ServerException(
        message: 'DioException on get family at $endpoint: ${e.message}',
      );
    }
  }

  @override
  Future<void> logout() async {
    if (AppConfig.baseUrl.isEmpty) {
      return;
    }

    try {
      await dio.post('${AppConfig.baseUrl}/auth/logout');
      // ignore: empty_catches
    } on DioException {}
  }
}
