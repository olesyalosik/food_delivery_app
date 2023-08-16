import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:order_history/order_history.dart';
import 'package:home/home.dart';
import 'package:shopping_cart/shopping_cart.dart';
import 'package:settings/settings.dart';
import 'package:favorite/favorite.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const <PageRouteInfo>[
        HomeRoute(),
        OrderHistoryRoute(),
        ShoppingCartRoute(),
        SettingsRoute(),
        FavoriteRoute(),
      ],
    );
  }
}
