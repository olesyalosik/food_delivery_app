import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

@RoutePage()
class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.colorShade01,
          ),
          title: Center(
            child: Text(
              'Pending orders',
              style: TextStyles.comfortaa_bold_24.copyWith(
                color: AppColors.colorShade01,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
