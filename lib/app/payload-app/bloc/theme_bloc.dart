import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<ChangeThemeEvent>(_changeThemeFunction);
  }

  void _changeThemeFunction(ChangeThemeEvent event, Emitter<ThemeState> emit) {
    if (event.randomeInt % 2 == 0) {
      emit(state.copyWith(appThemeType: AppThemeType.light));
    } else {
      emit(state.copyWith(appThemeType: AppThemeType.dark));
    }
  }
}
