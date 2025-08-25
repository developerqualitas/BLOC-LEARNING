part of 'color_listener_cubit.dart';

class ColorListenerState {
  final Color color;

  ColorListenerState({required this.color});

  factory ColorListenerState.initial() {
    return ColorListenerState(color: Colors.white);
  }

  @override
  String toString() => 'ColorState(color: $color)';

  ColorListenerState copyWith({Color? color}) {
    return ColorListenerState(color: color ?? this.color);
  }

  @override
  bool operator ==(covariant ColorListenerState other) {
    if (identical(this, other)) return true;

    return other.color == color;
  }

  @override
  int get hashCode => color.hashCode;
}
