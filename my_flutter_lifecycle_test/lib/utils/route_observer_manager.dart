import 'package:flutter/material.dart';

class RouteObserverManager {
  static final RouteObserverManager _instance =
      RouteObserverManager._internal();

  RouteObserverManager._internal();

  static RouteObserverManager get instance => _instance;

  final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();
}
