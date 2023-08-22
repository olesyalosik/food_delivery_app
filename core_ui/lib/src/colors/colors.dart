import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppColors {
  static const Color colorShade01 = Color(0xFF2A3037);
  static const Color colorShade4 = Color(0xFFF7F7FB);
  static const Color colorAccent = Color(0xFF0B735F);
  static const Color colorMonoGray = Color(0xFFB5B5B5);
  static const Color colorPrimaryColor = Color(0xFFFE554A);
  static const Color colorPrimaryGradient = Color(0xFFFF774C);
  static const Color colorShade02 = Color(0xFFAAACAE);
  static const Color colorShade03 = Color(0xFFDFE2E5);
  static const Color colorShade04 = Color(0xFFFCFCFC);
  static const Color colorWhite = Color(0xFFFFFFFF);
  static const Color colorGray = Color(0xFFC4C4C4);
  static const Color lightBackgroundColor = Color(0xFFEFEFFC);
  static const Color lightPrimaryGradient = Color(0xFFECC1B3);
  static const Color darkBackgroundColor = Color(0xFF595858);
  static const LinearGradient primaryGradient = LinearGradient(
    colors: <Color>[
      colorPrimaryGradient,
      Color(0xFFD73A03),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
