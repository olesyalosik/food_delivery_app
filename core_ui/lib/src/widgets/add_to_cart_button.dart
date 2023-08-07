import 'dart:ffi';

import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: Dimens.padding5),
        child: Container(
          width: 25,
          height: 25, // Customize the size as per your requirement
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.colorPrimaryGradient,
          ),
          child: const Icon(
            Icons.shopping_cart_rounded,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
