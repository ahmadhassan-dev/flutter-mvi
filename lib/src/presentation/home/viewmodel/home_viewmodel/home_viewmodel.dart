import 'dart:async';
import 'package:flutter_mvi_test/src/domain/usecases/home/add_data_usecase.dart';
import 'package:flutter_mvi_test/src/domain/usecases/home/get_age_usecase.dart';
import 'package:flutter_mvi_test/src/framework/base_usecase.dart';
import 'package:flutter_mvi_test/src/framework/base_viewmodel.dart';
import 'package:injectable/injectable.dart';

import 'home_actions.dart';
import 'home_state.dart';

@LazySingleton()
class HomeViewModel extends CubitVm<HomeState, HomeActions> {
  final GetAgeUseCase getAgeUseCase;
  final AddDataUsecase addDataUsecase;

  HomeViewModel({
    required this.getAgeUseCase,
    required this.addDataUsecase,
  }) : super(const HomeState.initial());

  int _previousValue = 0;

  @override
  void onAction(HomeActions action) {
    action.when(incrementValue: () async {
      _previousValue =
          state.maybeWhen(loaded: (age) => age, orElse: () => _previousValue);
      emit(const HomeState.loading());
      final value = await getAgeUseCase(_previousValue);
      value.fold((l) => null, (r) => emit(HomeState.loaded(data: r)));
    }, addData: () async {
      await addDataUsecase(NoParams());
    });
  }
}
