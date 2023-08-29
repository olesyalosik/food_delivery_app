library order_history;

export 'src/ui/order_history_screen.dart';
import 'package:core/core.dart';

import 'order_history.gm.dart';
export 'order_history.gm.dart';

@AutoRouterConfig.module(replaceInRouteName: 'Screen,Route')
class OrderHistoryModule extends $OrderHistoryModule {}
