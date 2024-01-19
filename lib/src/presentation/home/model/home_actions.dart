import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_actions.freezed.dart';

@freezed
class HomeActions with _$HomeActions {
  const factory HomeActions.incrementValue() = ChangeName;
  const factory HomeActions.addData() = AddData;
}