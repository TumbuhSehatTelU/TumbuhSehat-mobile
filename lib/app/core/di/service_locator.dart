import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_tumbuh_sehat/app/core/network/network_info.dart';
import 'package:mobile_tumbuh_sehat/app/core/network/network_info_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  sl.registerLazySingleton(() => Connectivity());
}
