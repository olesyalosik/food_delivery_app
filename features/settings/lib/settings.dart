library settings;

export 'src/ui/settings_screen.dart';
import 'package:core/core.dart';

import 'settings.gm.dart';
export 'settings.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen,Route')
class SettingsModule extends $SettingsModule {}
