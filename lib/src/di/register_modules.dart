import 'package:logger/logger.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../data/datasources/local_data_source/model/user_schema.dart';

@module
abstract class RegisterModule {
  @LazySingleton()
  Logger get logger => Logger();

  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: "https://testing.com/",
          receiveTimeout: const Duration(milliseconds: 60000),
          connectTimeout: const Duration(milliseconds: 60000),
          sendTimeout: const Duration(milliseconds: 60000),
        ),
      );

  @preResolve
  Future<Isar> get isar async {
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open(
      [UserSchema],
      directory: dir.path,
    );
  }
}
