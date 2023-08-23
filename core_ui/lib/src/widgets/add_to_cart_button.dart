import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: Dimensions.padding5),
        child: Container(
          width: Dimensions.iconSize,
          height:
              Dimensions.iconSize, // Customize the size as per your requirement
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.colorPrimaryGradient,
          ),
          child: const Icon(
            Icons.add_circle_outlined,
            color: Colors.white,
            size: Dimensions.iconSize,
          ),
        ),
      ),
    );
  }
}
