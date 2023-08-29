library shopping_cart;

export 'src/ui/shopping_cart_screen.dart';
import 'package:core/core.dart';

import 'shopping_cart.gm.dart';
export 'shopping_cart.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen,Route')
class ShoppingCartModule extends $ShoppingCartModule {}
