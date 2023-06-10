import 'package:dio/dio.dart';
import 'package:movies/app_config.dart';
import 'package:movies/network/model/request_result_exception.dart';
import 'package:movies/network/model/request_result_response.dart';
import 'package:movies/network/rest_client_adapter.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Network implements RestClientAdapter {
  static const String _contentType = "application/json; charset=utf-8";
  static const int _connectionTimeout = 3000;
  static const int _receiveTimeout = 3000;
  static final _prettyLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: true,
    compact: false,
  );

  late Dio _dio;
  late List<Interceptor>? interceptorList;

  Network({BaseOptions? options, this.interceptorList}) {
    _dio = Dio(options ?? _options);
    _dio.interceptors.add(_prettyLogger);

    if (interceptorList != null) {
      interceptorList?.forEach((element) {
        _dio.interceptors.add(element);
      });
    }
  }

  final _options = BaseOptions(
    baseUrl: AppConfig.appBaseUrl,
    contentType: _contentType,
    connectTimeout: const Duration(milliseconds: _connectionTimeout),
    receiveTimeout: const Duration(milliseconds: _receiveTimeout),
  );

  @override
  Future<RequestResultResponse<T>> delete<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.delete<T>(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return _handleResponse<T>(response);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  @override
  Future<RequestResultResponse<T>> get<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return _handleResponse<T>(response);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  @override
  Future<RequestResultResponse<T>> patch<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.patch<T>(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return _handleResponse<T>(response);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  @override
  Future<RequestResultResponse<T>> post<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.post<T>(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return _handleResponse<T>(response);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  @override
  Future<RequestResultResponse<T>> put<T>(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.put<T>(
        path,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return _handleResponse<T>(response);
    } on DioException catch (e) {
      throw _handleException(e);
    }
  }

  RequestResultResponse<T> _handleResponse<T>(Response<T> response) {
    return RequestResultResponse<T>(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }

  RequestResultException _handleException(DioException exception) {
    return RequestResultException(
      message: exception.response?.statusMessage,
      statusCode: exception.response?.statusCode,
      error: exception.error,
      response: exception.response != null
          ? _handleResponse<dynamic>(exception.response!)
          : null,
    );
  }
}
