// lib/features/auth/data/datasources/auth_remote_datasource_impl.dart

import 'package:dio/dio.dart';
import 'package:mobile_tumbuh_sehat/app/core/config/app_config.dart';
import 'package:mobile_tumbuh_sehat/app/core/error/exceptions.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/family_model.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<FamilyModel> login({
    required String phone,
    required String password,
  }) async {
    if (AppConfig.baseUrl.isEmpty) {
      throw ServerException();
    }

    try {
      final response = await dio.post(
        '${AppConfig.baseUrl}/auth/login',
        data: {'phone': phone, 'password': password},
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
  Future<void> register({
    required FamilyModel family,
    required String password,
  }) async {
    if (AppConfig.baseUrl.isEmpty) {
      throw ServerException();
    }

    try {
      final requestData = family.toJson()..addAll({'password': password});

      final response = await dio.post(
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
}
