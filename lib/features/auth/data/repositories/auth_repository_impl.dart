import 'package:mobile_tumbuh_sehat/app/core/error/exceptions.dart';
import 'package:mobile_tumbuh_sehat/app/core/network/network_info.dart';
import 'package:mobile_tumbuh_sehat/app/core/security/password_hasher.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/child_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/family_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/parent_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/auth_result.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/child.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/family.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/repositories/auth_repository.dart';
import 'package:uuid/uuid.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final NetworkInfo networkInfo;
  final PasswordHasher passwordHasher;
  final Uuid uuid;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
    required this.passwordHasher,
    required this.uuid,
  });

  @override
  Future<AuthResult> login({
    required String phone,
    required String name,
    required String password,
  }) async {
    try {
      final familyModel = await localDataSource.getFamilyByPhone(phone);

      final parentModel = familyModel.parents.cast<ParentModel?>().firstWhere(
        (p) => p?.name == name,
        orElse: () => null,
      );

      if (parentModel != null &&
          passwordHasher.verify(password, parentModel.hashedPassword)) {
        await localDataSource.saveActiveParent(
          parent: parentModel,
          familyId: phone,
        );
        return AuthResult(
          family: familyModel.toEntity(),
          activeParent: parentModel.toEntity(),
        );
      } else {
        throw CacheException(
          message: 'No. Handphone, Nama, atau Password salah.',
        );
      }
    } on CacheException {
      throw CacheException(
        message: 'No. Handphone, Nama, atau Password salah.',
      );
    }
  }

  @override
  Future<void> registerNewFamily({
    required String phone,
    required String password,
    required Parent newParentData,
    required List<Child> childrenData,
  }) async {
    final hashedPassword = passwordHasher.hash(password);

    final parentModel = ParentModel(
      id: uuid.v4(),
      name: newParentData.name,
      role: newParentData.role,
      dateOfBirth: newParentData.dateOfBirth,
      maternalStatus: newParentData.maternalStatus,
      hashedPassword: hashedPassword,
    );

    final childrenModels = childrenData
        .map(
          (c) => ChildModel(
            id: uuid.v4(),
            name: c.name,
            gender: c.gender,
            dateOfBirth: c.dateOfBirth,
            height: c.height,
            weight: c.weight,
          ),
        )
        .toList();

    final familyModel = FamilyModel(
      familyId: phone,
      parents: [parentModel],
      children: childrenModels,
    );

    await localDataSource.saveFamily(familyModel);

    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.registerNewFamily(
          family: familyModel,
          password: password,
        );
      } on ServerException {
        // POSTPONE TO ADD SYNCHRONIZED LOGIC
      }
    }
  }

  @override
  Future<void> joinExistingFamily({
    required String familyPhone,
    required String password,
    required Parent newParentData,
  }) async {
    final hashedPassword = passwordHasher.hash(password);

    final newParentModel = ParentModel(
      id: uuid.v4(),
      name: newParentData.name,
      role: newParentData.role,
      dateOfBirth: newParentData.dateOfBirth,
      maternalStatus: newParentData.maternalStatus,
      hashedPassword: hashedPassword,
    );

    await localDataSource.addParentToFamily(
      familyId: familyPhone,
      newParent: newParentModel,
    );

    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.joinExistingFamily(
          familyId: familyPhone,
          newParent: newParentModel,
          password: password,
        );
      } on ServerException {
        // POSTPONE TO ADD SYNCHRONIZED LOGIC
      }
    }
  }

  @override
  Future<void> requestOtpForJoin(String phone) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.requestOtpForJoin(phone);
      } on ServerException {
        rethrow;
      }
    } else {
      throw ServerException();
    }
  }

  @override
  Future<void> verifyOtpForJoin({
    required String phone,
    required String otp,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.verifyOtpForJoin(phone: phone, otp: otp);
      } on OtpException {
        rethrow;
      } on ServerException {
        rethrow;
      }
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Parent?> getActiveParent() async {
    final parentModel = await localDataSource.getActiveParent();
    return parentModel?.toEntity();
  }

  @override
  Future<void> saveActiveParent({
    required String familyId,
    required Parent parent,
  }) async {
    try {
      final familyModel = await localDataSource.getFamilyByPhone(familyId);
      final parentModel = familyModel.parents.firstWhere(
        (p) => p.id == parent.id,
        orElse: () => throw CacheException(
          message: 'Gagal menyimpan sesi: Data pengguna tidak valid.',
        ),
      );
      await localDataSource.saveActiveParent(
        parent: parentModel,
        familyId: familyId,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Family> getFamilyByPhone(String phone) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteFamily = await remoteDataSource.getFamilyByPhone(phone);
        await localDataSource.saveFamily(remoteFamily);
        return remoteFamily.toEntity();
      } on ServerException {
        try {
          final localFamily = await localDataSource.getFamilyByPhone(phone);
          return localFamily.toEntity();
        } on CacheException {
          throw ServerException(
            message: 'Nomor handphone ini tidak terdaftar di sistem kami.',
          );
        }
      }
    } else {
      try {
        final localFamily = await localDataSource.getFamilyByPhone(phone);
        return localFamily.toEntity();
      } on CacheException {
        throw CacheException(
          message:
              'Anda sedang offline dan nomor ini tidak tersimpan di perangkat Anda.',
        );
      }
    }
  }

  @override
  Future<void> logout() async {
    await localDataSource.clearActiveParent();

    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.logout();
      } on ServerException {
        //  POSTPONE LOGIC
      }
    }
  }
}
