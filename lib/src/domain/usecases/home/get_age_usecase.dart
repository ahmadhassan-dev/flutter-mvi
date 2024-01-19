import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../framework/base_failures.dart';

abstract class IGetAge {
  Future<Either<Failure, int>> call(int param);
}

@Injectable(as: IGetAge)
class GetAge extends IGetAge {
  @override
  Future<Either<Failure, int>> call(int param) {
    return Future.delayed(const Duration(seconds: 1), () {
      return Right(param + 1);
    });
  }
}
