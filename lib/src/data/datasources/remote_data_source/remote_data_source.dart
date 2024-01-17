import 'package:fpdart/fpdart.dart';

import '../../../framework/base_failures.dart';

abstract class IRemoteDataSource {
  Future<Either<Failure, int>> getAge();
}
