import 'dart:ui';

import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class CategoryElement extends StatelessWidget {
  final String name;
  final String emoji;
  const CategoryElement({
    required this.name,
    required this.emoji,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: Dimens.bigCategoryWidth,
            height: Dimens.bigCategoryHeight,
            decoration: BoxDecoration(
              color: AppColors.colorPrimaryGradient,
              borderRadius: BorderRadius.circular(Dimens.radius50),
            ),
          ),
          Container(
            width: Dimens.categoryWidth,
            height: Dimens.categoryHeight,
            decoration: BoxDecoration(
              color: AppColors.lightBackgroundColor,
              borderRadius: BorderRadius.circular(Dimens.radius50),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
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
