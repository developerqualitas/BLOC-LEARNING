// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'color_stream_bloc.dart';

class ColorStreamState extends Equatable {
  final Color color;
  const ColorStreamState({required this.color});

  factory ColorStreamState.initial() {
    return ColorStreamState(color: Colors.deepPurpleAccent);
  }

  @override
  List<Object> get props => [color];

  @override
  bool get stringify => true;

  ColorStreamState copyWith({Color? color}) {
    return ColorStreamState(color: color ?? this.color);
  }
}
