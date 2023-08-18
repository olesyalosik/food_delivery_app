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
        CatalogueRoute(),
      ],
      bottomNavigationBuilder: (
        BuildContext context,
        TabsRouter tabsRouter,
      ) {
        return Container(
          height: 75.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              selectedIconTheme: IconThemeData(
                color: AppColors.colorPrimaryGradient,
              ),
              unselectedIconTheme: IconThemeData(color: AppColors.colorShade01),
              backgroundColor: AppColors.colorWhite,
              type: BottomNavigationBarType.fixed,
              iconSize: Dimensions.iconSize,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: AppColors.lightPrimaryGradient,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_rounded,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite_outline_rounded,
                    ),
                    label: 'Favorite'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.history,
                    ),
                    label: 'Order History'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                    ),
                    label: 'shopping cart'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                    ),
                    label: 'settings'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.list,
                    ),
                    label: 'catalogue'),
              ],
            ),
          ),
        );
      },
    );
  }
}
