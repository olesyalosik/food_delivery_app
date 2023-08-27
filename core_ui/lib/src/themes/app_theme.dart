import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.colorPrimaryColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.lightBackgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightBackgroundColor,
        titleTextStyle: TextStyles.comfortaa_bold_24.copyWith(
          color: AppColors.colorShade01,
        ),
      ),
      splashColor: AppColors.lightPrimaryGradient,
      iconTheme: IconThemeData(
        color: AppColors.colorShade01,
        size: Dimensions.iconSize,
      ),
      textTheme: TextTheme(
          displayLarge: TextStyles.comfortaa_light_16.copyWith(
            color: AppColors.colorShade01,
          ),
          displayMedium: TextStyles.comfortaa_light_14.copyWith(
            color: AppColors.colorShade01,
          ),
          displaySmall: TextStyles.comfortaa_light_12.copyWith(
            color: AppColors.colorShade01,
          ),
          titleMedium: TextStyles.comfortaa_bold_16.copyWith(
            color: AppColors.colorShade01,
          ),
          titleLarge: TextStyles.comfortaa_light_24.copyWith(
            color: AppColors.colorShade01,
          )),
      cardColor: AppColors.colorWhite,
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.colorWhite,
        indicatorColor: AppColors.lightPrimaryGradient,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: AppColors.colorPrimaryColor,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.darkBackgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkBackgroundColor,
        titleTextStyle: TextStyles.comfortaa_bold_24.copyWith(
          color: AppColors.colorWhite,
        ),
      ),
      splashColor: AppColors.colorPrimaryGradient,
      iconTheme: IconThemeData(
        color: AppColors.colorWhite,
        size: Dimensions.iconSize,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyles.comfortaa_light_16.copyWith(
          color: AppColors.colorWhite,
        ),
        displayMedium: TextStyles.comfortaa_light_14.copyWith(
          color: AppColors.colorWhite,
        ),
        displaySmall: TextStyles.comfortaa_light_12.copyWith(
          color: AppColors.colorWhite,
        ),
        titleMedium: TextStyles.comfortaa_bold_16.copyWith(
          color: AppColors.colorWhite,
        ),
        titleLarge: TextStyles.comfortaa_light_24.copyWith(
          color: AppColors.colorWhite,
        ),
      ),
      cardColor: AppColors.colorShade01,
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.colorShade02,
        indicatorColor: AppColors.colorPrimaryGradient,
      ),
    );
  }
}
