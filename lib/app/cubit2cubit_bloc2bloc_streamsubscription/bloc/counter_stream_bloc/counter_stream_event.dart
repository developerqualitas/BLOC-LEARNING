part of 'counter_stream_bloc.dart';

sealed class CounterStreamEvent extends Equatable {
  const CounterStreamEvent();

  @override
  List<Object> get props => [];
}

class ChangeCounterEvent extends CounterStreamEvent {}
