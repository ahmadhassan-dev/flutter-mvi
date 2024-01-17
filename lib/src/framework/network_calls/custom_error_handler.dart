import 'package:flutter_mvi_test/src/framework/base_failures.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class CustomErrorHandler {
  Failure resolveErrors({required Response<dynamic> response});

  Failure handleStatusCode(int internalCode);

  Failure defaultError();
}

@LazySingleton(as: CustomErrorHandler)
class CustomErrorHandlerImpl extends CustomErrorHandler {
  @override
  Failure resolveErrors({required Response<dynamic> response}) {
    return handleStatusCode(response.data['statusCode']);
  }

  @override
  Failure handleStatusCode(int internalCode) {
    switch (internalCode) {
      case 500:

      ///TODO : Define errors according to the code
      default:
        return SomethingWentWrong('Something went wrong');
    }
  }

  @override
  Failure defaultError() {
    return SomethingWentWrong('Something went wrong');
  }
}
