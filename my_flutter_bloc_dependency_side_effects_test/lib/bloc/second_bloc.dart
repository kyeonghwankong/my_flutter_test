import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_bloc_dependency_side_effects_test/bloc/first_bloc.dart';

abstract class SecondBlocEvent {}

class OnClickFirst extends SecondBlocEvent {}

class OnClickSecond extends SecondBlocEvent {}

class SecondBloc extends Bloc<SecondBlocEvent, int> {
  final FirstBloc _firstBloc;

  SecondBloc(super.initialState, this._firstBloc) {
    debugPrint('SecondBloc constructor');
    on<OnClickFirst>(_firstBlocEvent);
    on<OnClickSecond>(_secondBlocEvent);
  }

  FutureOr<void> _firstBlocEvent(
    SecondBlocEvent event,
    Emitter<int> emit,
  ) {
    _firstBloc.add(FirstBlocEvent());
  }

  FutureOr<void> _secondBlocEvent(
    SecondBlocEvent event,
    Emitter<int> emit,
  ) {
    emit(state + 1);
  }
}
