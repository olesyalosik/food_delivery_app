library main_page;

export 'src/main_page_screen.dart';
import 'package:core/core.dart';

import 'main_page.gm.dart';
export 'main_page.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen,Route')
class MainPageModule extends $MainPageModule {}
