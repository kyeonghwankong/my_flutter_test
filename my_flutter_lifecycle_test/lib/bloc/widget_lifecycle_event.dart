import 'package:flutter/material.dart';

abstract class WidgetLifecycleEvent {}

enum WidgetLifecycle {
  initState,
  didChangeDependencies,
  didUpdateWidget,
  build,
  dispose
}

class OnListenerStatefulLifecycle extends WidgetLifecycleEvent {
  WidgetLifecycle state;

  OnListenerStatefulLifecycle(this.state);
}

class OnChangeWidgetsBindingObserver extends WidgetLifecycleEvent {
  AppLifecycleState state;

  OnChangeWidgetsBindingObserver(this.state);
}

enum AppLifecycleStateV2 {
  onDetach,
  onHide,
  onInactive,
  onPause,
  onRestart,
  onResume,
  onShow
}

class OnChangeAppLifecycle extends WidgetLifecycleEvent {
  AppLifecycleStateV2 state;

  OnChangeAppLifecycle(this.state);
}

enum RouteAwareState { didPop, didPush, didPushNext, didPopNext }

class OnListenerRouteAwareEvent extends WidgetLifecycleEvent {
  RouteAwareState state;

  OnListenerRouteAwareEvent(this.state);
}

class CheckMyInheritedWidgetId extends WidgetLifecycleEvent {
  int id;

  CheckMyInheritedWidgetId(this.id);
}

class OnClickButton extends WidgetLifecycleEvent {
  String buttonText;

  OnClickButton(this.buttonText);
}