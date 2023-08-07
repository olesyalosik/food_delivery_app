import 'dart:ui';

import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class SectionElement extends StatelessWidget {
  final String name;
  final String emoji;
  const SectionElement({
    required this.name,
    required this.emoji,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.padding5),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: Dimens.categoryWidth,
            height: Dimens.categoryHeight,
            decoration: BoxDecoration(
              color: AppColors.lightBackgroundColor,
              borderRadius: BorderRadius.circular(Dimens.radius50),
              border: Border.all(
                color: AppColors.colorPrimaryGradient,
                width: 2.0,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(Dimens.padding5),
            alignment: Alignment.bottomCenter,
            width: Dimens.smallCategoryWidth,
            height: Dimens.smallCategoryHeight,
            decoration: const BoxDecoration(
              color: AppColors.lightPrimaryGradient,
              borderRadius: BorderRadius.all(
                Radius.circular(Dimens.radius50),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  emoji,
                  style: const TextStyle(
                    color: AppColors.colorShade01,
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(
                    color: AppColors.colorShade01,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
