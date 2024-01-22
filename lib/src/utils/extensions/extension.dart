import 'package:flutter_mvi_test/src/utils/routes/routes.dart';

extension RoutesExt on Routes {
  String get path {
    return map(
      initial: (_) => '/',
    );
  }
}
