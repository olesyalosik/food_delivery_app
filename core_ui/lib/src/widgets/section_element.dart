import 'dart:ui';

import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class SectionElement extends StatelessWidget {
  final String name;
  final String image;
  const SectionElement({
    required this.name,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.padding10),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: Dimensions.categoryWidth,
            height: Dimensions.categoryHeight,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(Dimensions.categoryRadius),
              border: Border.all(
                color: AppColors.colorPrimaryGradient,
                width: 2.0,
              ),
            ),
          ),
          Container(
            // padding: const EdgeInsets.all(Dimens.padding5),
            alignment: Alignment.bottomCenter,
            width: Dimensions.smallCategoryWidth,
            height: Dimensions.smallCategoryHeight,
            decoration: const BoxDecoration(
              color: AppColors.lightPrimaryGradient,
              borderRadius: BorderRadius.all(
                Radius.circular(Dimensions.categoryRadius),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(image,
                    width: Dimensions.iconSize,
                    height: Dimensions.iconSize,
                    fit: BoxFit.cover),
                Text(
                  name,
                  style: TextStyles.comfortaa_light_12
                      .copyWith(color: AppColors.colorShade01),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
