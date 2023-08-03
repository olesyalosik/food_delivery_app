import 'package:core_ui/src/colors/colors.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 50, // Customize the size as per your requirement
        height: 50, // Customize the size as per your requirement
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.colorPrimaryGradient,
        ),
        child: Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}
