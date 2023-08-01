import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import '../../core_ui.dart';

class DishImage extends StatelessWidget {
  final DishModel dishModel;
  final double width;
  final double height;
  const DishImage({
    required this.height,
    required this.width,
    required this.dishModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimens.radius15),
              color: AppColors.colorWhite,
            )),
        //TODO   Container() with image,
      ],
    );
  }
}
