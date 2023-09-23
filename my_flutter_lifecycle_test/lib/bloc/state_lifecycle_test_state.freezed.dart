// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_lifecycle_test_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateLifecycleTestState {
  int get inheritedState => throw _privateConstructorUsedError;
  int get homePageWidgetParam => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateLifecycleTestStateCopyWith<StateLifecycleTestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateLifecycleTestStateCopyWith<$Res> {
  factory $StateLifecycleTestStateCopyWith(StateLifecycleTestState value,
          $Res Function(StateLifecycleTestState) then) =
      _$StateLifecycleTestStateCopyWithImpl<$Res, StateLifecycleTestState>;
  @useResult
  $Res call({int inheritedState, int homePageWidgetParam});
}

/// @nodoc
class _$StateLifecycleTestStateCopyWithImpl<$Res,
        $Val extends StateLifecycleTestState>
    implements $StateLifecycleTestStateCopyWith<$Res> {
  _$StateLifecycleTestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inheritedState = null,
    Object? homePageWidgetParam = null,
  }) {
    return _then(_value.copyWith(
      inheritedState: null == inheritedState
          ? _value.inheritedState
          : inheritedState // ignore: cast_nullable_to_non_nullable
              as int,
      homePageWidgetParam: null == homePageWidgetParam
          ? _value.homePageWidgetParam
          : homePageWidgetParam // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateLifecycleTestStateCopyWith<$Res>
    implements $StateLifecycleTestStateCopyWith<$Res> {
  factory _$$_StateLifecycleTestStateCopyWith(_$_StateLifecycleTestState value,
          $Res Function(_$_StateLifecycleTestState) then) =
      __$$_StateLifecycleTestStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int inheritedState, int homePageWidgetParam});
}

/// @nodoc
class __$$_StateLifecycleTestStateCopyWithImpl<$Res>
    extends _$StateLifecycleTestStateCopyWithImpl<$Res,
        _$_StateLifecycleTestState>
    implements _$$_StateLifecycleTestStateCopyWith<$Res> {
  __$$_StateLifecycleTestStateCopyWithImpl(_$_StateLifecycleTestState _value,
      $Res Function(_$_StateLifecycleTestState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inheritedState = null,
    Object? homePageWidgetParam = null,
  }) {
    return _then(_$_StateLifecycleTestState(
      inheritedState: null == inheritedState
          ? _value.inheritedState
          : inheritedState // ignore: cast_nullable_to_non_nullable
              as int,
      homePageWidgetParam: null == homePageWidgetParam
          ? _value.homePageWidgetParam
          : homePageWidgetParam // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StateLifecycleTestState extends _StateLifecycleTestState {
  const _$_StateLifecycleTestState(
      {required this.inheritedState, required this.homePageWidgetParam})
      : super._();

  @override
  final int inheritedState;
  @override
  final int homePageWidgetParam;

  @override
  String toString() {
    return 'StateLifecycleTestState(inheritedState: $inheritedState, homePageWidgetParam: $homePageWidgetParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateLifecycleTestState &&
            (identical(other.inheritedState, inheritedState) ||
                other.inheritedState == inheritedState) &&
            (identical(other.homePageWidgetParam, homePageWidgetParam) ||
                other.homePageWidgetParam == homePageWidgetParam));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, inheritedState, homePageWidgetParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateLifecycleTestStateCopyWith<_$_StateLifecycleTestState>
      get copyWith =>
          __$$_StateLifecycleTestStateCopyWithImpl<_$_StateLifecycleTestState>(
              this, _$identity);
}

abstract class _StateLifecycleTestState extends StateLifecycleTestState {
  const factory _StateLifecycleTestState(
      {required final int inheritedState,
      required final int homePageWidgetParam}) = _$_StateLifecycleTestState;
  const _StateLifecycleTestState._() : super._();

  @override
  int get inheritedState;
  @override
  int get homePageWidgetParam;
  @override
  @JsonKey(ignore: true)
  _$$_StateLifecycleTestStateCopyWith<_$_StateLifecycleTestState>
      get copyWith => throw _privateConstructorUsedError;
}
