library main;

export 'src/main_screen.dart';
import 'package:core/core.dart';

import 'main.gm.dart';
export 'main.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen,Route')
class MainModule extends $MainModule {}
