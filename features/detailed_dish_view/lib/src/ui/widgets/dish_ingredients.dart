import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';

class DishIngredients extends StatelessWidget {
  final DishModel dishModel;

  const DishIngredients({
    required this.dishModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(Dimensions.padding10),
        itemCount: dishModel.ingredients.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 30.0,
            decoration: BoxDecoration(
              color: AppColors.colorWhite,
              borderRadius: BorderRadius.circular(Dimensions.containerRadius),
            ),
            child: Center(
              child: Text(
                '${dishModel.ingredients[index]}',
                style: TextStyles.comfortaa_light_14
                    .copyWith(color: AppColors.colorShade01),
              ),
            ),
          );
        });
  }
}
