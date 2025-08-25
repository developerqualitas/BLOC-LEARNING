import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_listnener_state.dart';

class CounterListnenerCubit extends Cubit<CounterListnenerState> {
  CounterListnenerCubit() : super(CounterListnenerState.initial());

  void incrementCounter(int incrementSize) {
    emit(state.copyWith(counter: state.counter + incrementSize));
  }
}
