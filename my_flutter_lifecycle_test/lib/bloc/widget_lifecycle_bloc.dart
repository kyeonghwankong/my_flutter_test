import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_lifecycle_test/bloc/widget_lifecycle_event.dart';
import 'package:my_flutter_lifecycle_test/bloc/widget_lifecycle_state.dart';

class WidgetLifecycleBloc
    extends Bloc<WidgetLifecycleEvent, WidgetLifecycleState> {
  WidgetLifecycleBloc() : super(WidgetLifecycleState.newInstance()) {
    on<OnChangeAppLifecycle>(_onChangeAppLifecycleListener);
    on<OnChangeWidgetsBindingObserver>(_onChangeWidgetsBindingObserver);
    on<OnListenerStatefulLifecycle>(_onCallStatefulLifecycle);
    on<OnListenerRouteAwareEvent>(_onListenerRouteAwareEvent);
    on<CheckMyInheritedWidgetId>(_checkMyInheritedWidgetId);
    on<OnClickButton>(_onClickButton);
  }

  FutureOr<void> _onChangeAppLifecycleListener(
    OnChangeAppLifecycle event,
    Emitter<WidgetLifecycleState> emit,
  ) {
    emit(state.addAppLifecycleListenerEvent(
        'AppLifecycleListener.${event.state.name}()'));
  }

  FutureOr<void> _onChangeWidgetsBindingObserver(
    OnChangeWidgetsBindingObserver event,
    Emitter<WidgetLifecycleState> emit,
  ) {
    emit(state.addWidgetsBindingObserverEvent(
        'WidgetBindingObserver.${event.state.name}'));
  }

  FutureOr<void> _onCallStatefulLifecycle(
    OnListenerStatefulLifecycle event,
    Emitter<WidgetLifecycleState> emit,
  ) {
    emit(state.addAppLifecycleListenerEvent('State.${event.state.name}()'));
    emit(state.addWidgetsBindingObserverEvent('State.${event.state.name}()'));
  }

  FutureOr<void> _onListenerRouteAwareEvent(
    OnListenerRouteAwareEvent event,
    Emitter<WidgetLifecycleState> emit,
  ) {
    emit(
        state.addAppLifecycleListenerEvent('RouteAware.${event.state.name}()'));
    emit(state
        .addWidgetsBindingObserverEvent('RouteAware.${event.state.name}()'));
  }

  FutureOr<void> _checkMyInheritedWidgetId(
    CheckMyInheritedWidgetId event,
    Emitter<WidgetLifecycleState> emit,
  ) {
    emit(
        state.addAppLifecycleListenerEvent('MyInheritedWidget.id=${event.id}'));
    emit(state
        .addWidgetsBindingObserverEvent('MyInheritedWidget.id=${event.id}'));
  }

  FutureOr<void> _onClickButton(
    OnClickButton event,
    Emitter<WidgetLifecycleState> emit,
  ) {
    emit(state.addAppLifecycleListenerEvent('Click ${event.buttonText}'));
    emit(state.addWidgetsBindingObserverEvent('Click ${event.buttonText}'));
  }
}
