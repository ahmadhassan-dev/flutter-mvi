import 'package:flutter_mvi_test/src/domain/usecases/home/add_data.dart';
import 'package:flutter_mvi_test/src/domain/usecases/home/get_age.dart';
import 'package:flutter_mvi_test/src/presentation/core/base_viewmodel.dart';
import 'package:injectable/injectable.dart';

import '../model/home_actions.dart';
import '../model/home_state.dart';

@injectable
class HomeViewModel extends Vm<HomeState, HomeActions> {
  final IGetAge getAgeUseCase;
  final IAddData addData;

  HomeViewModel({
    required this.getAgeUseCase,
    required this.addData,
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
      await addData();
    });
  }
}
