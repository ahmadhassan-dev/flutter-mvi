import 'package:flutter_mvi_test/src/data/repository/repository_imp.dart';
import 'package:flutter_mvi_test/src/domain/repository/repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../framework/base_failures.dart';
import '../../../framework/base_usecase.dart';

@lazySingleton
class AddDataUsecase extends UseCase<NoParams, Either<Failure, bool>> {
  final IRepository repository;

  AddDataUsecase(this.repository);

  @override
  Future<Either<Failure, bool>> call(NoParams param) async {
    return await repository.addData();
  }
}
