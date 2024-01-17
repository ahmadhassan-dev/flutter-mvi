import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'custom_error_handler.dart';
import 'custom_interceptor.dart';

abstract class HttpApiCalls {
  Future<Response<dynamic>> onPost({
    required String api,
    required dynamic data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? jwt,
  });

  Future<Response<dynamic>> onGet({
    required String api,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? jwt,
  });

  void resolveAPIMetadata(
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      String? jwt});
}

@LazySingleton(as: HttpApiCalls)
class HttpApiCallsImp extends HttpApiCalls {
  final Dio _dio;
  final Logger _logger;
  final CustomErrorHandler _errorHandler;

  HttpApiCallsImp({
    required Dio dio,
    required Logger logger,
    required CustomErrorHandler errorHandler,
  })  : _dio = dio,
        _logger = logger,
        _errorHandler = errorHandler;

  @override
  Future<Response> onGet(
      {required String api,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      String? jwt}) async {
    try {
      resolveAPIMetadata(
          queryParameters: queryParameters, headers: headers, jwt: jwt);
      return await _dio.get(api);
    } on DioException catch (e) {
      _logger.f('[ON POST | DIO ERROR] [API | $api] ${e.response}');
      throw _errorHandler.resolveErrors(response: e.response!);
    } catch (e) {
      _logger.f('[ON POST | SOMETHING GOES WRONG IN API CALL] $e');
      throw _errorHandler.defaultError();
    }
  }

  @override
  Future<Response> onPost(
      {required String api,
      required data,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      String? jwt}) async {
    try {
      resolveAPIMetadata(
          queryParameters: queryParameters, headers: headers, jwt: jwt);
      return await _dio.post(api, data: data);
    } on DioException catch (e) {
      _logger.f('[ON POST | DIO ERROR] [API | $api] ${e.response}');
      throw _errorHandler.resolveErrors(response: e.response!);
    } catch (e) {
      _logger.f('[ON POST | SOMETHING GOES WRONG IN API CALL] $e');
      throw _errorHandler.defaultError();
    }
  }

  @override
  void resolveAPIMetadata(
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers,
      String? jwt}) {
    _dio.options.queryParameters.clear();
    if (queryParameters != null) {
      _dio.options.queryParameters.addAll(queryParameters);
    }
    if (headers != null) {
      _dio.options.headers.addAll(headers);
    }
    if (jwt != null) {
      _dio.interceptors.addAll([CustomInterceptors(jwt: jwt)]);
    }
  }
}
