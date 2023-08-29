library home;

export 'src/ui/home_screen.dart';
import 'package:core/core.dart';

import 'home.gm.dart';
export 'home.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen,Route')
class HomeModule extends $HomeModule {}
