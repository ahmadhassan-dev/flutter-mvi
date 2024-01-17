import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvi_test/src/framework/base_viewmodel.dart';

abstract class BaseView<VM extends CubitVm<S, A>, A, S>
    extends StatelessWidget {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VM, S>(
      builder: (context, state) {
        return render(context, state);
      },
    );
  }

  Widget render(BuildContext context, S state);

  Widget loadingViewBuilder(BuildContext context);
}
