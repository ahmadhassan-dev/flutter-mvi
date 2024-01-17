import 'package:flutter_mvi_test/src/framework/base_failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class IRepository {
  Future<Either<Failure, int>> getAge();

  Future<Either<Failure, bool>> addData();
}
