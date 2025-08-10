class ServerException implements Exception {
  final String? message;
  ServerException({this.message});
}

class CacheException implements Exception {
  final String? message;
  CacheException({this.message});
}

class InputException implements Exception {
  final String? message;
  InputException({this.message});
}

class OtpException implements Exception {
  final String? message;
  OtpException({this.message});
}
