import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:mobile_tumbuh_sehat/app/core/network/network_info.dart';
import 'package:mobile_tumbuh_sehat/app/core/network/network_info_impl.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_local_datasource_impl.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/datasources/auth_remote_datasource_impl.dart';
import 'package:uuid/uuid.dart';

final sl = GetIt.instance;
const String familyBoxName = 'family_box';
const String sessionBoxName = 'session_box';

Future<void> init() async {
  // CORE
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // EXTERNAL PACKAGES
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => const Uuid());
  sl.registerLazySingleton(() => Hive.box(familyBoxName));
  sl.registerLazySingleton(() => Hive.box(sessionBoxName));

  // FEATURES - AUTH
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(
      familyBox: sl.get<Box>(instanceName: familyBoxName),
      sessionBox: sl.get<Box>(instanceName: sessionBoxName),
    ),
  );

  sl.registerLazySingleton(() => Connectivity());
}
