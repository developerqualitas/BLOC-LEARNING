import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'color_listener_state.dart';

class ColorListenerCubit extends Cubit<ColorListenerState> {
  ColorListenerCubit() : super(ColorListenerState.initial());

  void changeColor() {
    if (state.color == Colors.white) {
      emit(state.copyWith(color: Colors.green));
    } else if (state.color == Colors.green) {
      emit(state.copyWith(color: Colors.blue));
    } else if (state.color == Colors.blue) {
      emit(state.copyWith(color: Colors.black));
    } else if (state.color == Colors.black) {
      emit(state.copyWith(color: Colors.white));
    }
  }
}
