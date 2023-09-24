import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootBlocEvent {}

class RootBloc extends Bloc<RootBlocEvent, int> {

  RootBloc(super.initialState) {
    debugPrint('RootBloc constructor');
    on<RootBlocEvent>(_rootBlocEvent);
  }

  FutureOr<void> _rootBlocEvent(
    RootBlocEvent event,
    Emitter<int> emit,
  ) {
    emit(state + 1);
  }
}
