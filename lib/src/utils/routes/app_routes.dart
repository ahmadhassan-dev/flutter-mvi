import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvi_test/src/presentation/home/home_screen.dart';
import 'package:flutter_mvi_test/src/utils/extensions/extension.dart';
import 'package:flutter_mvi_test/src/utils/routes/routes.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final _navigationKey = GlobalKey<NavigatorState>();
  static final router = GoRouter(
    navigatorKey: _navigationKey,
    routes: [
      GoRoute(
        path: const Routes.initial().path,
        builder: (context, state) => const HomeScreen(),
      )
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          "Invalid route ${state.error}",
        ),
      ),
    ),
  );
}
