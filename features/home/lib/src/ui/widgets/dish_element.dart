import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

class DishElement extends StatelessWidget {
  final DishModel dishModel;

  const DishElement({
    required this.dishModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimensions.padding10,
        vertical: Dimensions.padding10,
      ),
      child: Container(
        height: Dimensions.dishElementHeight,
        width: Dimensions.dishElementWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.containerRadius),
          color: AppColors.colorWhite,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            DishImage(
              imageURL: dishModel.imageURL,
              width: Dimensions.cardWidth,
              height: Dimensions.cardHeight,
              alignment: Alignment.center,
            ),
            Text(
              dishModel.name,
              style: TextStyles.comfortaa_light_16
                  .copyWith(color: AppColors.colorShade01),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: Dimensions.padding5),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.colorPrimaryColor,
                    size: Dimensions.iconSize,
                  ),
                ),
                Text(
                  "${dishModel.cost}\$",
                  style: TextStyles.comfortaa_light_16
                      .copyWith(color: AppColors.colorShade01),
                ),
                const AddToCartButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
