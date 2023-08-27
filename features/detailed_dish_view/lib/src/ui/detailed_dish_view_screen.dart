import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:domain/domain.dart';
import 'package:catalogue/catalogue.dart';

@RoutePage()
class DetailedDishViewScreen extends StatelessWidget {
  final DishModel dishModel;

  const DetailedDishViewScreen({
    required this.dishModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: InkWell(
            onTap: () => context.navigateTo(
              CatalogueRoute(),
            ),
            child: Icon(
              Icons.arrow_back_ios_rounded,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: Dimensions.padding30,
                end: Dimensions.padding10,
              ),
              child: Icon(
                Icons.person,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.padding10,
            vertical: Dimensions.padding20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: Dimensions.containerDishImageHeight,
                width: Dimensions.containerDishImageWidth,
                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  borderRadius:
                      BorderRadius.circular(Dimensions.containerRadius),
                ),
                child: FittedBox(
                  child: DishImage(
                    imageURL: dishModel.imageURL,
                    width: Dimensions.dishImageWidth,
                    height: Dimensions.dishImageHeight,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Container(
                height: Dimensions.detailedAddToCartButtonHeight,
                width: Dimensions.detailedAddToCartButtonWidth,
                decoration: BoxDecoration(
                  gradient: AppColors.primaryGradient,
                  borderRadius: BorderRadius.circular(Dimensions.buttonRadius),
                  color: AppColors.colorPrimaryGradient,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.remove,
                      color: AppColors.colorWhite,
                      size: Dimensions.iconSize,
                    ),
                    Text(
                      'num',
                      style: TextStyles.comfortaa_bold_16.copyWith(
                        color: AppColors.colorWhite,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: AppColors.colorWhite,
                      size: Dimensions.iconSize,
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  dishModel.name,
                  style: Theme.of(context).appBarTheme.titleTextStyle,
                ),
              ),
              Center(
                child: Text(
                  dishModel.description,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.padding20,
                ),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Ingredients',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.ingredientSizedBoxHeight,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(Dimensions.padding5),
                  itemCount: dishModel.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: Dimensions.padding5,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: Dimensions.ingredientWidth,
                        height: Dimensions.ingredientHeight,
                        decoration: BoxDecoration(
                          color: AppColors.colorWhite,
                          borderRadius:
                              BorderRadius.circular(Dimensions.pictureRadius),
                          border: Border.all(
                            color: AppColors.colorPrimaryGradient,
                            width: Dimensions.lineWidth,
                          ),
                        ),
                        child: Text(
                          '${dishModel.ingredients[index]}',
                          style: TextStyles.comfortaa_bold_14.copyWith(
                            color: AppColors.colorShade01,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              ),
              Container(
                width: Dimensions.addToCartButtonWidth,
                height: Dimensions.addToCartButtonHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.colorPrimaryGradient,
                  gradient: AppColors.primaryGradient,
                  borderRadius: BorderRadius.circular(Dimensions.buttonRadius),
                ),
                child: Text(
                  'Add to cart',
                  style: TextStyles.comfortaa_medium_14.copyWith(
                    color: AppColors.colorWhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
