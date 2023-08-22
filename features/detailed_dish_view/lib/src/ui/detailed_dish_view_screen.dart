import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:domain/domain.dart';
import 'package:catalogue/catalogue.dart';
import 'package:navigation/navigation.dart';

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
                start: 30.0,
                end: 10.0,
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
                height: 225.0,
                width: 260.0,
                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  borderRadius:
                      BorderRadius.circular(Dimensions.containerRadius),
                ),
                child: FittedBox(
                  child: DishImage(
                    imageURL: dishModel.imageURL,
                    width: 230.0,
                    height: 150.0,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  gradient: AppColors.primaryGradient,
                  borderRadius: BorderRadius.circular(30.0),
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
                      'n',
                      style: TextStyles.comfortaa_medium_24.copyWith(
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
                  horizontal: 20.0,
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
                height: 70.0,
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
                        width: 200.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: AppColors.colorWhite,
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(
                            color: AppColors.colorPrimaryGradient,
                            width: 3.0,
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
                width: 350.0,
                height: 50.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.colorPrimaryGradient,
                  gradient: AppColors.primaryGradient,
                  borderRadius: BorderRadius.circular(20.0),
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
