library detailed_dish_view;

export 'src/ui/detailed_dish_view_screen.dart';
import 'package:core/core.dart';

import 'detailed_dish_view.gm.dart';
export 'detailed_dish_view.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen,Route')
class DetailedDishViewModule extends $DetailedDishViewModule {}
