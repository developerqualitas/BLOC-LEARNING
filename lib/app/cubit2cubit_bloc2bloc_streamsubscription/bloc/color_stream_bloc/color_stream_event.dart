part of 'color_stream_bloc.dart';

abstract class ColorStreamEvent extends Equatable {
  const ColorStreamEvent();

  @override
  List<Object> get props => [];
}

class ChangeColorEvent extends ColorStreamEvent {}

