// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_lifecycle_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WidgetLifecycleState {
  List<String> get lifecycleListenerHistory =>
      throw _privateConstructorUsedError;
  List<String> get widgetBindingHistory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WidgetLifecycleStateCopyWith<WidgetLifecycleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetLifecycleStateCopyWith<$Res> {
  factory $WidgetLifecycleStateCopyWith(WidgetLifecycleState value,
          $Res Function(WidgetLifecycleState) then) =
      _$WidgetLifecycleStateCopyWithImpl<$Res, WidgetLifecycleState>;
  @useResult
  $Res call(
      {List<String> lifecycleListenerHistory,
      List<String> widgetBindingHistory});
}

/// @nodoc
class _$WidgetLifecycleStateCopyWithImpl<$Res,
        $Val extends WidgetLifecycleState>
    implements $WidgetLifecycleStateCopyWith<$Res> {
  _$WidgetLifecycleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifecycleListenerHistory = null,
    Object? widgetBindingHistory = null,
  }) {
    return _then(_value.copyWith(
      lifecycleListenerHistory: null == lifecycleListenerHistory
          ? _value.lifecycleListenerHistory
          : lifecycleListenerHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      widgetBindingHistory: null == widgetBindingHistory
          ? _value.widgetBindingHistory
          : widgetBindingHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WidgetLifecycleStateCopyWith<$Res>
    implements $WidgetLifecycleStateCopyWith<$Res> {
  factory _$$_WidgetLifecycleStateCopyWith(_$_WidgetLifecycleState value,
          $Res Function(_$_WidgetLifecycleState) then) =
      __$$_WidgetLifecycleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> lifecycleListenerHistory,
      List<String> widgetBindingHistory});
}

/// @nodoc
class __$$_WidgetLifecycleStateCopyWithImpl<$Res>
    extends _$WidgetLifecycleStateCopyWithImpl<$Res, _$_WidgetLifecycleState>
    implements _$$_WidgetLifecycleStateCopyWith<$Res> {
  __$$_WidgetLifecycleStateCopyWithImpl(_$_WidgetLifecycleState _value,
      $Res Function(_$_WidgetLifecycleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifecycleListenerHistory = null,
    Object? widgetBindingHistory = null,
  }) {
    return _then(_$_WidgetLifecycleState(
      lifecycleListenerHistory: null == lifecycleListenerHistory
          ? _value._lifecycleListenerHistory
          : lifecycleListenerHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      widgetBindingHistory: null == widgetBindingHistory
          ? _value._widgetBindingHistory
          : widgetBindingHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_WidgetLifecycleState extends _WidgetLifecycleState {
  const _$_WidgetLifecycleState(
      {required final List<String> lifecycleListenerHistory,
      required final List<String> widgetBindingHistory})
      : _lifecycleListenerHistory = lifecycleListenerHistory,
        _widgetBindingHistory = widgetBindingHistory,
        super._();

  final List<String> _lifecycleListenerHistory;
  @override
  List<String> get lifecycleListenerHistory {
    if (_lifecycleListenerHistory is EqualUnmodifiableListView)
      return _lifecycleListenerHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lifecycleListenerHistory);
  }

  final List<String> _widgetBindingHistory;
  @override
  List<String> get widgetBindingHistory {
    if (_widgetBindingHistory is EqualUnmodifiableListView)
      return _widgetBindingHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_widgetBindingHistory);
  }

  @override
  String toString() {
    return 'WidgetLifecycleState(lifecycleListenerHistory: $lifecycleListenerHistory, widgetBindingHistory: $widgetBindingHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WidgetLifecycleState &&
            const DeepCollectionEquality().equals(
                other._lifecycleListenerHistory, _lifecycleListenerHistory) &&
            const DeepCollectionEquality()
                .equals(other._widgetBindingHistory, _widgetBindingHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lifecycleListenerHistory),
      const DeepCollectionEquality().hash(_widgetBindingHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WidgetLifecycleStateCopyWith<_$_WidgetLifecycleState> get copyWith =>
      __$$_WidgetLifecycleStateCopyWithImpl<_$_WidgetLifecycleState>(
          this, _$identity);
}

abstract class _WidgetLifecycleState extends WidgetLifecycleState {
  const factory _WidgetLifecycleState(
          {required final List<String> lifecycleListenerHistory,
          required final List<String> widgetBindingHistory}) =
      _$_WidgetLifecycleState;
  const _WidgetLifecycleState._() : super._();

  @override
  List<String> get lifecycleListenerHistory;
  @override
  List<String> get widgetBindingHistory;
  @override
  @JsonKey(ignore: true)
  _$$_WidgetLifecycleStateCopyWith<_$_WidgetLifecycleState> get copyWith =>
      throw _privateConstructorUsedError;
}
