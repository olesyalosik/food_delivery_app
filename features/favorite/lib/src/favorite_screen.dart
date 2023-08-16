import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

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
              'Favorite',
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
