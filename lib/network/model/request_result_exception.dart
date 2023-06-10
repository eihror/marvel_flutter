import 'package:movies/network/model/request_result_response.dart';

class RequestResultException implements Exception {
  RequestResultException({
    this.message,
    this.statusCode,
    required this.error,
    this.response,
  });

  String? message;
  int? statusCode;
  dynamic error;

  RequestResultResponse<dynamic>? response;

  @override
  String toString() {
    return 'RequestResultException{message: $message, statusCode: $statusCode, error: $error, response: $response}';
  }
}
