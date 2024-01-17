import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CubitVm<S, A> extends Cubit<S> {
  CubitVm(S initialState) : super(initialState);

  late S localState;

  void onAction(A action);
}
