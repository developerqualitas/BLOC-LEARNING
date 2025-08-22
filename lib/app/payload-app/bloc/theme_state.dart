// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'theme_bloc.dart';

enum AppThemeType { light, dark }

class ThemeState extends Equatable {
  final AppThemeType appThemeType;

  const ThemeState({this.appThemeType = AppThemeType.light});

  // Default Method
  factory ThemeState.initial() {
    return ThemeState();
  }

  // String Method
  @override
  bool get stringify => true;

  // Equatable
  @override
  List<Object> get props => [appThemeType];

  // CopyWith Method
  ThemeState copyWith({AppThemeType? appThemeType}) {
    return ThemeState(appThemeType: appThemeType ?? this.appThemeType);
  }
}
