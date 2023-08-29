import 'package:favorite/favorite.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:home/home.dart';
import 'package:order_history/order_history.dart';
import 'package:settings/settings.gm.dart';
import 'package:shopping_cart/shopping_cart.dart';
import 'package:core_ui/core_ui.dart';
import 'package:catalogue/catalogue.dart';
import 'package:detailed_dish_view/detailed_dish_view.dart';

@RoutePage()
class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const <PageRouteInfo>[
        HomeRoute(),
        FavoriteRoute(),
        OrderHistoryRoute(),
        ShoppingCartRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (
        BuildContext context,
        TabsRouter tabsRouter,
      ) {
        return Container(
          height: Dimensions.navigationBarHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(Dimensions.navigationBarRadius),
              topLeft: Radius.circular(Dimensions.navigationBarRadius),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 0,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.navigationBarRadius),
              topRight: Radius.circular(Dimensions.navigationBarRadius),
            ),
            child: BottomNavigationBar(
              selectedIconTheme: IconThemeData(
                color: Theme.of(context).navigationBarTheme.indicatorColor,
                size: Theme.of(context).iconTheme.size,
              ),
              unselectedIconTheme: Theme.of(context).iconTheme,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_rounded,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_outline_rounded,
                  ),
                  label: 'Favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.history,
                  ),
                  label: 'Order History',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                  ),
                  label: 'shopping cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: 'settings',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
