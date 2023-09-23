import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_lifecycle_test/bloc/state_lifecycle_test_state.dart';

abstract class StateLifecycleTestEvent {}

class ChangeInheritedWidgetEvent extends StateLifecycleTestEvent {}

class ChangeConstructorParamEvent extends StateLifecycleTestEvent {}

class StateLifecycleTestBloc
    extends Bloc<StateLifecycleTestEvent, StateLifecycleTestState> {
  StateLifecycleTestBloc() : super(StateLifecycleTestState.newInstance()) {
    on<ChangeInheritedWidgetEvent>(_changeInheritedWidgetEvent);
    on<ChangeConstructorParamEvent>(_changeConstructorParamEvent);
  }

  FutureOr<void> _changeInheritedWidgetEvent(
    ChangeInheritedWidgetEvent event,
    Emitter<StateLifecycleTestState> emit,
  ) {
    emit(state.changeInheritedState());
  }

  FutureOr<void> _changeConstructorParamEvent(
    ChangeConstructorParamEvent event,
    Emitter<StateLifecycleTestState> emit,
  ) {
    emit(state.changeHomePageWidgetParam());
  }
}
