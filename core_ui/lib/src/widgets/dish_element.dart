import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:domain/domain.dart';

class DishElement extends StatelessWidget {
  final DishModel dishModel;
  const DishElement({
    required this.dishModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.padding10,
        vertical: Dimens.padding10,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.radius15),
          color: AppColors.colorWhite,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DishImage(
              imageURL: dishModel.imageURL,
              width: Dimens.cardWidth,
              height: Dimens.cardHeight,
              alignment: Alignment.center,
            ),
            Text(
              dishModel.name,
              style: TextStyles.comfortaa_light_16
                  .copyWith(color: AppColors.colorShade01),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: Dimens.padding5),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.colorPrimaryColor,
                    size: Dimens.iconSize,
                  ),
                ),
                Text(
                  "${dishModel.cost}\$",
                  style: TextStyles.comfortaa_light_16
                      .copyWith(color: AppColors.colorShade01),
                ),
                AddToCartButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
