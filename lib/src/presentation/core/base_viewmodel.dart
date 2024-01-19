import 'package:flutter_bloc/flutter_bloc.dart';

abstract class Vm<S, A> extends Cubit<S> {
  Vm(S initialState) : super(initialState);

  void onAction(A action);
}
