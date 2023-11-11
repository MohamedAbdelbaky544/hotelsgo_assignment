import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:hotelsgo_assignment/core/network/error_message_model.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure('connection time out');
      case DioExceptionType.sendTimeout:
        return const ServerFailure('send time out');

      case DioExceptionType.receiveTimeout:
        return const ServerFailure('receive Time out');

      case DioExceptionType.badCertificate:
        return const ServerFailure('bad Certificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          ErrorMessageModel.fromJson(dioError.response!.data).message,
        );

      case DioExceptionType.cancel:
        return const ServerFailure('request from server was cancel');

      case DioExceptionType.connectionError:
        return const ServerFailure('connection Error');

      case DioExceptionType.unknown:
        return const ServerFailure('Unexpacted error , please try again later');

      default:
        return const ServerFailure('Unexpacted error , please try again later');
    }
  }
  factory ServerFailure.fromResponse(
    int statuseCode,
    String massage,
  ) {
    if (statuseCode == 401 || statuseCode == 422) {
      return ServerFailure(massage);
    } else if (statuseCode == 404) {
      return ServerFailure(massage);
    } else if (statuseCode == 500) {
      return ServerFailure(massage);
    } else if (statuseCode == 406) {
      return ServerFailure(massage);
    } else {
      return const ServerFailure('unkown  error ');
    }
  }
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(super.message);
}
