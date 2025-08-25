import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_stream_event.dart';
part 'counter_stream_state.dart';

class CounterStreamBloc extends Bloc<CounterStreamEvent, CounterStreamState> {
  final int incrementSize = 1;
  final Colo
  CounterStreamBloc() : super(CounterStreamState.initial()) {
    on<CounterStreamEvent>((event, emit) {});
  }
}
