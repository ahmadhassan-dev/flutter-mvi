import 'package:flutter/material.dart';
import 'package:flutter_mvi_test/src/app/app.dart';
import 'package:flutter_mvi_test/src/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await configureDependencies();
  runApp(const MyApp());
}
