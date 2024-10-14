import 'package:bookly/core/utils/errors/failure.dart';
import 'package:dio/dio.dart';

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiSErver');

      case DioExceptionType.sendTimeout:
        return ServerFailure(' sendtimeout with ApiSErver');
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive timeout");
      case DioExceptionType.badResponse:
        // When the server sends an incorrect response (e.g., 404, 500)
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request Cancelled');

      case DioExceptionType.unknown:
        return ServerFailure('Unknown Dio Error: ${dioException.message}');

      default:
        return ServerFailure('No Internet Connection');
    }
  }

  factory ServerFailure.fromResponse(int status, dynamic response) {
    if (status == 403 || status == 401 || status == 404) {
      return ServerFailure(response['error']);
    } else if (status == 404) {
      return ServerFailure("Methode not found, please try later !");
    } else if (status == 500) {
      return ServerFailure("Serveur is down ");
    } else {
      return ServerFailure("another error");
    }
  }
}
