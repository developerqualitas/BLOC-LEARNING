import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_streamsubscription/cubits/color_cubit/color_cubit.dart';
import 'package:flutter/material.dart';
part 'counter_state.dart';

class CounterCubit2Cubit extends Cubit<CounterState> {
  int _incrementSize = 1;
  //--------- Make Cubit Instance -------------//
  final ColorCubit colorCubit;
  late final StreamSubscription colorSubscription;

  CounterCubit2Cubit({required this.colorCubit}) : super(CounterState.initial()) {
    // this subscription is not auto cancle that's why make close
    colorSubscription = colorCubit.stream.listen((ColorState colorState) {
      if (colorState.color == Colors.red) {
        _incrementSize = 1;
      } else if (colorState.color == Colors.green) {
        _incrementSize = 10;
      } else if (colorState.color == Colors.blue) {
        _incrementSize = 100;
      } else if (colorState.color == Colors.black) {
        emit(state.copyWith(counter: state.counter - 100));
        _incrementSize = -100;
      }
    });
  }

  void changeCounter() {
    emit(state.copyWith(counter: state.counter + _incrementSize));
  }

  @override
  Future<void> close() {
    colorSubscription.cancel();
    return super.close();
  }
}
