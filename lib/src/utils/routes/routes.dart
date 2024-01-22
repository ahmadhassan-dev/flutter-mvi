import 'package:freezed_annotation/freezed_annotation.dart';

part 'routes.freezed.dart';

@freezed
class Routes with _$Routes {
  const factory Routes.initial() = InitialRoute;
}
