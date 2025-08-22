// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

// Change Theme Event

class ChangeThemeEvent extends ThemeEvent {
  final int randomeInt;

  const ChangeThemeEvent({required this.randomeInt});

  @override
  String toString() => 'ChangeThemeEvent(randomeInt: $randomeInt)';

  @override
  List<Object> get props => [randomeInt];
}
