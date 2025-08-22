import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  // ? For the Increment Counter Value Through Button Click
  void incrementCount() {
    emit(state.copyWith(counter: state.counter + 1));
  }

  // ? For the Decrement Counter value through button click
  void decrementCounter() {
    emit(state.copyWith(counter: state.counter - 1));
  }


}
