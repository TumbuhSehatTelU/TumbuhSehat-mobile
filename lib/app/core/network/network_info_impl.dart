import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mobile_tumbuh_sehat/app/core/config/app_config.dart';
import 'network_info.dart';

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _connectivity;

  NetworkInfoImpl(this._connectivity);

  @override
  Future<bool> get isConnected async {
    if (AppConfig.baseUrl.isEmpty) {
      return false;
    }
    final result = await _connectivity.checkConnectivity();
    // ignore: unrelated_type_equality_checks
    if (result == ConnectivityResult.none) {
      return false;
    }
    try {
      final uri = Uri.parse(AppConfig.baseUrl);
      final host = uri.host;

      if (host.isEmpty) {
        return false;
      }

      final result = await InternetAddress.lookup(host);

      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
