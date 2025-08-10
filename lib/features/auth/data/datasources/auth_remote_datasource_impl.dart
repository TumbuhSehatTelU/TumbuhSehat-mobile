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
    if (AppConfig.baseUrl.isEmpty) throw ServerException();

    try {
      final response = await dio.post(
        // POSTPONE ENDPOINT
        '${AppConfig.baseUrl}/auth/login',
        data: {'phone': phone, 'name': name, 'password': password},
      );

      if (response.statusCode == 200) {
        return FamilyModel.fromJson(response.data['data']);
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    }
  }

  @override
  Future<void> registerNewFamily({
    required FamilyModel family,
    required String password,
  }) async {
    if (AppConfig.baseUrl.isEmpty) throw ServerException();

    try {
      final requestData = family.toJson()..addAll({'password': password});
      final response = await dio.post(
        // POSTPONE ENDPOINT
        '${AppConfig.baseUrl}/auth/register',
        data: requestData,
      );

      if (response.statusCode != 201) {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    }
  }

  @override
  Future<void> joinExistingFamily({
    required String familyId,
    required ParentModel newParent,
    required String password,
  }) async {
    if (AppConfig.baseUrl.isEmpty) throw ServerException();

    try {
      final requestData = newParent.toJson()..addAll({'password': password});
      final response = await dio.post(
        // POSTPONE ENDPOINT
        '${AppConfig.baseUrl}/family/$familyId/join',
        data: requestData,
      );

      if (response.statusCode != 200) {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    }
  }

  @override
  Future<FamilyModel> getFamilyByPhone(String phone) async {
    if (AppConfig.baseUrl.isEmpty) throw ServerException();

    try {
      // POSTPONE ENDPOINT
      final response = await dio.get('${AppConfig.baseUrl}/family/$phone');
      if (response.statusCode == 200) {
        return FamilyModel.fromJson(response.data['data']);
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
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
