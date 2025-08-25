// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_listnener_cubit.dart';

class CounterListnenerState extends Equatable {
  final int counter;

  CounterListnenerState({required this.counter});

  factory CounterListnenerState.initial() {
    return CounterListnenerState(counter: 0);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [counter];

  CounterListnenerState copyWith({int? counter}) {
    return CounterListnenerState(counter: counter ?? this.counter);
  }
}
