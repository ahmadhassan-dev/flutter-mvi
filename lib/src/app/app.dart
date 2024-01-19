import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvi_test/src/presentation/home/viewmodel/viewmodel.dart';
import 'package:flutter_mvi_test/src/utils/routes/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../di/di.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) {
        return BlocProvider.value(
          value: sl.get<HomeViewModel>(),
          child: MaterialApp.router(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            routeInformationParser: AppRoutes.router.routeInformationParser,
            routerDelegate: AppRoutes.router.routerDelegate,
            routeInformationProvider: AppRoutes.router.routeInformationProvider,
          ),
        );
      },
    );
  }
}
