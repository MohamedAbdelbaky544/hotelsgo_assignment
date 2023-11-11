import 'package:hotelsgo_assignment/core/network/error_message_model.dart';

class ServerException implements Exception {
  ServerException({required this.errorMessageModel});
  final ErrorMessageModel errorMessageModel;
}

class LocalDatabaseException implements Exception {
  final String message;

  const LocalDatabaseException({
    required this.message,
  });
}
