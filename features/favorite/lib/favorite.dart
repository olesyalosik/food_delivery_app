library favorite;

export 'src/favorite_screen.dart';
import 'package:core/core.dart';

import 'favorite.gm.dart';
export 'favorite.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen,Route')
class FavoriteModule extends $FavoriteModule {}
