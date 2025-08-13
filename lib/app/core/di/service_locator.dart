import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:mobile_tumbuh_sehat/app/core/network/network_info.dart';
import 'package:mobile_tumbuh_sehat/app/core/network/network_info_impl.dart';
import 'package:mobile_tumbuh_sehat/app/core/security/bcrypt_password_hasher.dart';
import 'package:mobile_tumbuh_sehat/app/core/security/password_hasher.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_local_datasource_impl.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/repositories/auth_repository.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/get_active_session_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/join_existing_family_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/register_new_family_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/request_otp_for_join_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/search_family_by_phone_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/usecases/verify_otp_for_join_usecase.dart';
import 'package:mobile_tumbuh_sehat/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:uuid/uuid.dart';

final sl = GetIt.instance;
const String familyBoxName = 'family_box';
const String sessionBoxName = 'session_box';

Future<void> init() async {
  // FEATURES - AUTH
  // BLoC
  sl.registerFactory(
    () => AuthBloc(
      searchFamilyByPhoneUseCase: sl(),
      registerNewFamilyUseCase: sl(),
      joinExistingFamilyUseCase: sl(),
      getActiveSessionUseCase: sl(),
      requestOtpForJoinUseCase: sl(),
      verifyOtpForJoinUseCase: sl(),
      networkInfo: sl(),
    ),
  );

  // UseCases
  sl.registerLazySingleton(() => GetActiveSessionUseCase(sl(), sl()));
  sl.registerLazySingleton(() => SearchFamilyByPhoneUseCase(sl()));
  sl.registerLazySingleton(() => RegisterNewFamilyUseCase(sl()));
  sl.registerLazySingleton(() => JoinExistingFamilyUseCase(sl()));
  sl.registerLazySingleton(
    () => RequestOtpForJoinUseCase(sl()),
  );
  sl.registerLazySingleton(() => VerifyOtpForJoinUseCase(sl()));

  // Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
      passwordHasher: sl(),
      uuid: sl(),
    ),
  );

  // DataSources
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(
      familyBox: sl.get<Box>(instanceName: familyBoxName),
      sessionBox: sl.get<Box>(instanceName: sessionBoxName),
    ),
  );

  // CORE
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton<PasswordHasher>(() => BcryptPasswordHasher());

  // EXTERNAL PACKAGES
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => const Uuid());
}
