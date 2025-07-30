import 'package:mobile_tumbuh_sehat/app/core/error/exceptions.dart';
import 'package:mobile_tumbuh_sehat/app/core/network/network_info.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/family_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/parent_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/auth_result.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/child.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/repositories/auth_repository.dart';
import 'package:uuid/uuid.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final Uuid uuid;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
    required this.uuid,
  });

  @override
  Future<AuthResult> login(
      {required String phone, required String password}) async {
    // Untuk login, kita hanya perlu mengecek data lokal karena password tidak dikirim ke remote.
    // Logika password check terjadi di BLoC/UseCase.
    // Di dunia nyata, login akan selalu online dan mengembalikan token.
    // Untuk aplikasi ini, kita prioritaskan data lokal.
    try {
      final familyModel = await localDataSource.getFamily(phone);
      // Di sini kita asumsikan password sudah diverifikasi di lapisan atas.
      // Kita cari parent yang sesuai.
      // Untuk kesederhanaan, kita anggap login berhasil jika keluarga ditemukan.
      // Kita ambil parent pertama sebagai yang aktif.
      final activeParent = familyModel.parents.first;
      await localDataSource.saveActiveParent(active_parent);
      return AuthResult(
        family: familyModel.toEntity(),
        activeParent: activeParent.toEntity(),
      );
    } on CacheException {
      rethrow;
    }
  }

  @override
  Future<void> register({
    required String phone,
    required String password,
    required Parent newParentData,
    required List<Child> childrenData,
  }) async {
    final parentModel = ParentModel.fromEntity(newParentData);
    final childrenModels =
        childrenData.map((c) => ChildModel.fromEntity(c)).toList();

    final familyModel = FamilyModel(
      familyId: phone, 
      parents: [parentModel],
      children: childrenModels,
    );

    await localDataSource.saveFamily(familyModel);

    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.register(
            family: familyModel, password: password);
      } on ServerException {
        // NEED LOGIC FOR SYNCHRONIZING
      }
    }
  }

  @override
  Future<Parent?> getActiveParent() async {
    final parentModel = await localDataSource.getActiveParent();
    return parentModel?.toEntity();
  }

  @override
  Future<void> saveActiveParent(Parent parent) async {
    await localDataSource.saveActiveParent(ParentModel.fromEntity(parent));
  }

  @override
  Future<void> logout() async {
    await localDataSource.clearActiveParent();
  }
}
