// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_mvi_test/src/data/datasources/local_data_source/local_data_source.dart'
    as _i10;
import 'package:flutter_mvi_test/src/data/datasources/local_data_source/local_data_source_imp.dart'
    as _i11;
import 'package:flutter_mvi_test/src/data/datasources/remote_data_source/remote_data_source.dart'
    as _i12;
import 'package:flutter_mvi_test/src/data/datasources/remote_data_source/remote_data_source_imp.dart'
    as _i13;
import 'package:flutter_mvi_test/src/data/repository/repository_imp.dart'
    as _i15;
import 'package:flutter_mvi_test/src/di/register_modules.dart' as _i18;
import 'package:flutter_mvi_test/src/domain/repository/repository.dart' as _i14;
import 'package:flutter_mvi_test/src/domain/usecases/home/add_data_usecase.dart'
    as _i16;
import 'package:flutter_mvi_test/src/domain/usecases/home/get_age_usecase.dart'
    as _i5;
import 'package:flutter_mvi_test/src/framework/network_calls/base_network_call.dart'
    as _i9;
import 'package:flutter_mvi_test/src/framework/network_calls/custom_error_handler.dart'
    as _i3;
import 'package:flutter_mvi_test/src/presentation/home/viewmodel/home_viewmodel/home_viewmodel.dart'
    as _i17;
import 'package:flutter_mvi_test/src/services/isar_services.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;
import 'package:logger/logger.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.CustomErrorHandler>(
        () => _i3.CustomErrorHandlerImpl());
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.GetAgeUseCase>(() => _i5.GetAgeUseCase());
    await gh.factoryAsync<_i6.Isar>(
      () => registerModule.isar,
      preResolve: true,
    );
    gh.lazySingleton<_i7.IsarService>(
        () => _i7.IsarService(isar: gh<_i6.Isar>()));
    gh.lazySingleton<_i8.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i9.HttpApiCalls>(() => _i9.HttpApiCallsImp(
          dio: gh<_i4.Dio>(),
          logger: gh<_i8.Logger>(),
          errorHandler: gh<_i3.CustomErrorHandler>(),
        ));
    gh.lazySingleton<_i10.ILocalDataSource>(
        () => _i11.LocalDataSource(gh<_i6.Isar>()));
    gh.lazySingleton<_i12.IRemoteDataSource>(() => _i13.RemoteDataSource(
          networkCallsWrapper: gh<_i9.HttpApiCalls>(),
          logger: gh<_i8.Logger>(),
        ));
    gh.lazySingleton<_i14.IRepository>(() => _i15.Repository(
          remoteDataSource: gh<_i12.IRemoteDataSource>(),
          localDataSource: gh<_i10.ILocalDataSource>(),
        ));
    gh.lazySingleton<_i16.AddDataUsecase>(
        () => _i16.AddDataUsecase(gh<_i14.IRepository>()));
    gh.lazySingleton<_i17.HomeViewModel>(() => _i17.HomeViewModel(
          getAgeUseCase: gh<_i5.GetAgeUseCase>(),
          addDataUsecase: gh<_i16.AddDataUsecase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i18.RegisterModule {}
