// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeActions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementValue,
    required TResult Function() addData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? incrementValue,
    TResult? Function()? addData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementValue,
    TResult Function()? addData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeName value) incrementValue,
    required TResult Function(AddData value) addData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeName value)? incrementValue,
    TResult? Function(AddData value)? addData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeName value)? incrementValue,
    TResult Function(AddData value)? addData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeActionsCopyWith<$Res> {
  factory $HomeActionsCopyWith(
          HomeActions value, $Res Function(HomeActions) then) =
      _$HomeActionsCopyWithImpl<$Res, HomeActions>;
}

/// @nodoc
class _$HomeActionsCopyWithImpl<$Res, $Val extends HomeActions>
    implements $HomeActionsCopyWith<$Res> {
  _$HomeActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeNameImplCopyWith<$Res> {
  factory _$$ChangeNameImplCopyWith(
          _$ChangeNameImpl value, $Res Function(_$ChangeNameImpl) then) =
      __$$ChangeNameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeNameImplCopyWithImpl<$Res>
    extends _$HomeActionsCopyWithImpl<$Res, _$ChangeNameImpl>
    implements _$$ChangeNameImplCopyWith<$Res> {
  __$$ChangeNameImplCopyWithImpl(
      _$ChangeNameImpl _value, $Res Function(_$ChangeNameImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeNameImpl implements ChangeName {
  const _$ChangeNameImpl();

  @override
  String toString() {
    return 'HomeActions.incrementValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeNameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementValue,
    required TResult Function() addData,
  }) {
    return incrementValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? incrementValue,
    TResult? Function()? addData,
  }) {
    return incrementValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementValue,
    TResult Function()? addData,
    required TResult orElse(),
  }) {
    if (incrementValue != null) {
      return incrementValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeName value) incrementValue,
    required TResult Function(AddData value) addData,
  }) {
    return incrementValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeName value)? incrementValue,
    TResult? Function(AddData value)? addData,
  }) {
    return incrementValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeName value)? incrementValue,
    TResult Function(AddData value)? addData,
    required TResult orElse(),
  }) {
    if (incrementValue != null) {
      return incrementValue(this);
    }
    return orElse();
  }
}

abstract class ChangeName implements HomeActions {
  const factory ChangeName() = _$ChangeNameImpl;
}

/// @nodoc
abstract class _$$AddDataImplCopyWith<$Res> {
  factory _$$AddDataImplCopyWith(
          _$AddDataImpl value, $Res Function(_$AddDataImpl) then) =
      __$$AddDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddDataImplCopyWithImpl<$Res>
    extends _$HomeActionsCopyWithImpl<$Res, _$AddDataImpl>
    implements _$$AddDataImplCopyWith<$Res> {
  __$$AddDataImplCopyWithImpl(
      _$AddDataImpl _value, $Res Function(_$AddDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddDataImpl implements AddData {
  const _$AddDataImpl();

  @override
  String toString() {
    return 'HomeActions.addData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() incrementValue,
    required TResult Function() addData,
  }) {
    return addData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? incrementValue,
    TResult? Function()? addData,
  }) {
    return addData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? incrementValue,
    TResult Function()? addData,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeName value) incrementValue,
    required TResult Function(AddData value) addData,
  }) {
    return addData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeName value)? incrementValue,
    TResult? Function(AddData value)? addData,
  }) {
    return addData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeName value)? incrementValue,
    TResult Function(AddData value)? addData,
    required TResult orElse(),
  }) {
    if (addData != null) {
      return addData(this);
    }
    return orElse();
  }
}

abstract class AddData implements HomeActions {
  const factory AddData() = _$AddDataImpl;
}
