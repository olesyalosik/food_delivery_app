import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
              'Settings',
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
