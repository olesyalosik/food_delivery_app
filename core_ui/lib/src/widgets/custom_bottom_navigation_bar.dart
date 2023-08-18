import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior:
          Clip.hardEdge, //or better look(and cost) using Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
        ),
      ),
      child: NavigationBar(
          surfaceTintColor: AppColors.colorWhite,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: AppColors.lightPrimaryGradient,
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(
                Icons.home_rounded,
                color: AppColors.colorShade01,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.history,
                color: AppColors.colorShade01,
              ),
              label: 'Order history',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: AppColors.colorShade01,
              ),
              label: 'Shopping cart',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.settings,
                color: AppColors.colorShade01,
              ),
              label: 'Settings',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.favorite_border_rounded,
                color: AppColors.colorShade01,
              ),
              label: 'Favorite',
            ),
          ]),
    );
  }
}
