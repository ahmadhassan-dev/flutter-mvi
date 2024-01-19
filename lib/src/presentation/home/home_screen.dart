import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvi_test/src/presentation/home/model/home_actions.dart';
import 'package:flutter_mvi_test/src/presentation/home/model/home_state.dart';
import 'package:flutter_mvi_test/src/presentation/home/viewmodel/viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeViewModel, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initial State')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (data) => Center(child: Text(data.toString())),
            error: (errorMessage) =>
                Center(child: Text('Error: $errorMessage')),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<HomeViewModel>().onAction(const HomeActions.addData());
      }),
    );
  }
}
