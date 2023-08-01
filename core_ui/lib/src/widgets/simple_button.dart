import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final String text;
  const SimpleButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.colorPrimaryGradient,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: AppColors.colorWhite, fontSize: 20.0),
        ),
      ),
    );
  }
}
