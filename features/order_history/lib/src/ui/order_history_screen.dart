import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightBackgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.lightBackgroundColor,
          leading: Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.colorShade01,
          ),
          title: Center(
            child: Text(
              'Complete orders',
              style: TextStyles.comfortaa_bold_24
                  .copyWith(color: AppColors.colorShade01),
            ),
          ),
        ),
      ),
    );
  }
}
