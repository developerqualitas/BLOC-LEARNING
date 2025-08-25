import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'color_stream_event.dart';
part 'color_stream_state.dart';

class ColorStreamBloc extends Bloc<ColorStreamEvent, ColorStreamState> {
  ColorStreamBloc() : super(ColorStreamState.initial()) {
    on<ChangeColorEvent>(_changeColor);

  }

  // User For Color Chnage
  void _changeColor(ChangeColorEvent event, Emitter<ColorStreamState> emit) {
    if (state.color == Colors.red) {
      emit(state.copyWith(color: Colors.green));
    } else if (state.color == Colors.green) {
      emit(state.copyWith(color: Colors.blue));
    } else if (state.color == Colors.blue) {
      emit(state.copyWith(color: Colors.black));
    } else if (state.color == Colors.black) {
      emit(state.copyWith(color: Colors.red));
    }
  }


}
