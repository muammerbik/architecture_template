///ServerException
class ServerException implements Exception {
  final String message;
  final int? statusCode;

  ServerException({
    required this.message,
    this.statusCode,
  });
}
///NetworkException
class NetworkException implements Exception {
  final String message;

  NetworkException({
    required this.message,
  });
}

///CacheException
class CacheException implements Exception {
  final String message;

  CacheException({
    required this.message,
  });
}

///AuthenticationException
class AuthenticationException implements Exception {
  final String message;

  AuthenticationException({
    required this.message,
  });
}
