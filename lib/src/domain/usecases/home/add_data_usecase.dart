import 'package:flutter_mvi_test/src/data/repository/repository.dart';
import 'package:flutter_mvi_test/src/domain/repository/repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../framework/base_failures.dart';

abstract class IAddData {
  Future<Either<Failure, bool>> call();
}


//Do we need to use @injectable here too?
@Injectable(as: IAddData)
class AddData extends IAddData {
  final IRepository repository;

  AddData(this.repository);

  @override
  Future<Either<Failure, bool>> call() async {
    return await repository.addData();
  }
}
