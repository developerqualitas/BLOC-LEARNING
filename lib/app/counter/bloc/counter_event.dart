part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

// Increment Event

class IncrementCounterEvent extends CounterEvent {}

// Decrement Event

class DecrementCounterEvent extends CounterEvent {}
