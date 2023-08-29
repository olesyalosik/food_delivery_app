import 'package:core/core.dart';

import 'settings_event.dart';
import 'settings_state.dart';

export 'settings_event.dart';
export 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState(isDark: false)) {
    on<SwitchThemeEvent>(_onSetTheme);
  }

  Future<void> _onSetTheme(
    SwitchThemeEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(SettingsState(isDark: event.isDark));
  }
}
