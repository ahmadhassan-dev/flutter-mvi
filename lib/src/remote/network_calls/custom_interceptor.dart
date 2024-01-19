import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomInterceptors extends Interceptor {
  final String _jwt;

  CustomInterceptors({
    required String jwt,
  }) : _jwt = jwt;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer $_jwt';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }
}
