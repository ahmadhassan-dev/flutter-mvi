import 'package:flutter_mvi_test/src/data/remote/I_remote.dart';
import 'package:flutter_mvi_test/src/framework/base_failures.dart';
import 'package:flutter_mvi_test/src/remote/network_calls/base_network_call.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IRemoteDataSource)
class RemoteDataSource extends IRemoteDataSource {
  final HttpApiCalls _httpApiCalls;
  final Logger _logger;

  RemoteDataSource({
    required HttpApiCalls networkCallsWrapper,
    required Logger logger,
  })  : _logger = logger,
        _httpApiCalls = networkCallsWrapper;

  @override
  Future<Either<Failure, int>> getAge() {
    // TODO: NEED TO CALL THE API USING HTTP_WRAPPER
    return Future.value(const Right(1));
  }
}
