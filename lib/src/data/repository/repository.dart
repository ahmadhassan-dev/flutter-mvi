import 'package:flutter_mvi_test/src/data/local/I_local.dart';
import 'package:flutter_mvi_test/src/data/local/model/user_schema.dart';
import 'package:flutter_mvi_test/src/data/remote/I_remote.dart';
import 'package:flutter_mvi_test/src/domain/repository/repository.dart';
import 'package:flutter_mvi_test/src/framework/base_failures.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRepository)
class Repository extends IRepository {
  final IRemoteDataSource _remoteDataSource;
  final ILocalDataSource _localDataSource;

  Repository(
      {required IRemoteDataSource remoteDataSource,
      required ILocalDataSource localDataSource})
      : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure, int>> getAge() {
    ///TODO: Need to  call the repo to get data from API
    return Future.value(const Right(1));
  }

  @override
  Future<Either<Failure, bool>> addData() async {
    final user = User()
      ..age = 12
      ..name = "Ahmad";
    await _localDataSource.addData(user);
    return Future.value(const Right(true));
  }
}
