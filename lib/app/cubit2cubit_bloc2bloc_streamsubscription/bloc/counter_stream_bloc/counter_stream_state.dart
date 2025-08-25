// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_stream_bloc.dart';

class CounterStreamState extends Equatable {
  final int counter;

  CounterStreamState({required this.counter});

  factory CounterStreamState.initial() {
    return CounterStreamState(counter: 0);
  }

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;

  CounterStreamState copyWith({int? counter}) {
    return CounterStreamState(counter: counter ?? this.counter);
  }
}
