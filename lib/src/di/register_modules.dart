import 'package:flutter_mvi_test/src/data/local/model/user_schema.dart';
import 'package:logger/logger.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

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
