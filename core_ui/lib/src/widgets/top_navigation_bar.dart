import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.arrow_back_ios_rounded, color: AppColors.colorShade01),
        Container(
          height: Dimens.height40,
          width: Dimens.width40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.radius15),
            color: AppColors.colorWhite,
          ),
          child: Icon(Icons.person),
        ),
      ],
    );
  }
}
