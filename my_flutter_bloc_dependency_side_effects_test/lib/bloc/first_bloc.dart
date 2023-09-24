import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstBlocEvent {}

class FirstBloc extends Bloc<FirstBlocEvent, int> {

  FirstBloc(super.initialState) {
    debugPrint('FirstBloc constructor');
    on<FirstBlocEvent>(_firstBlocEvent);
  }

  FutureOr<void> _firstBlocEvent(
    FirstBlocEvent event,
    Emitter<int> emit,
  ) {
    emit(state + 1);
  }
}
