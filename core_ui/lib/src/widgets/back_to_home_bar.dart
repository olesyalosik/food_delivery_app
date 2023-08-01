import 'package:flutter/material.dart';

import '../../core_ui.dart';

class BackToHomeBar extends StatelessWidget {
  const BackToHomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.arrow_back_sharp),
          Container(
            width: Dimens.width40,
            height: Dimens.height40,
            decoration: BoxDecoration(
                color: AppColors.colorWhite,
                borderRadius: BorderRadius.circular(Dimens.radius15)),
          )
        ],
      ),
    );
  }
}
