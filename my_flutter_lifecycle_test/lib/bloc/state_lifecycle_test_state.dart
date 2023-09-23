import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_lifecycle_test_state.freezed.dart';

@freezed
class StateLifecycleTestState with _$StateLifecycleTestState {
  const factory StateLifecycleTestState({
    required int inheritedState,
    required int homePageWidgetParam,
  }) = _StateLifecycleTestState;

  const StateLifecycleTestState._();

  static StateLifecycleTestState newInstance() =>
      const StateLifecycleTestState(inheritedState: 0, homePageWidgetParam: 0);

  StateLifecycleTestState changeInheritedState() {
    return copyWith(inheritedState: inheritedState + 1);
  }

  StateLifecycleTestState changeHomePageWidgetParam() {
    return copyWith(homePageWidgetParam: homePageWidgetParam + 1);
  }
}
