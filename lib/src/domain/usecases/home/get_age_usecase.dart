import 'package:flutter_mvi_test/src/framework/base_usecase.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../framework/base_failures.dart';

@lazySingleton
class GetAgeUseCase extends UseCase<int, Either<Failure, int>> {
  @override
  Future<Either<Failure, int>> call(int param) {
    return Future.delayed(const Duration(seconds: 1), () {
      return Right(param + 1);
    });
  }
}
