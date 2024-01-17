import 'package:flutter/cupertino.dart';
import 'package:flutter_mvi_test/src/presentation/home/homeScreen.dart';
import 'package:flutter_mvi_test/src/utils/routes/routes.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final _navigationKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    navigatorKey: _navigationKey,
    routes: [
      GoRoute(
        path: Routes.initialRouter,
        builder: (context, state) => const HomeScreen(),
      )
    ],
    errorBuilder: (context, state) => Center(
      child: Text(
        "Invalid route ${state.error}",
      ),
    ),
  );
}


