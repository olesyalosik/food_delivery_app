import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:domain/domain.dart';

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
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.padding10,
          vertical: Dimensions.padding20,
        ),
        child: Scaffold(
          backgroundColor: AppColors.lightBackgroundColor,
          appBar: AppBar(
            backgroundColor: AppColors.lightBackgroundColor,
            title: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Delivery to',
                        style: TextStyles.comfortaa_light_16.copyWith(
                          color: AppColors.colorShade01,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.colorShade01,
                          decorationThickness: 1.0,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: AppColors.colorShade01,
                      ),
                    ],
                  ),
                  Text(
                    '*address*',
                    style: TextStyles.comfortaa_light_14.copyWith(
                      color: AppColors.colorPrimaryGradient,
                    ),
                  ),
                ],
              ),
            ),
            leading: Icon(Icons.arrow_back_ios_rounded,
                color: AppColors.colorShade01),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: Dimensions.padding10),
                child: Icon(
                  Icons.person,
                  size: Dimensions.iconSize,
                ),
              ),
            ],
          ),
          body: Column(
            children: <Widget>[
              Image.asset('assets/pictures/profile_picture.jpg'),
              Center(
                child: Text(
                  'Name',
                  style: TextStyles.comfortaa_bold_24.copyWith(
                    color: AppColors.colorShade01,
                  ),
                ),
              ),
              Center(
                child: Text(
                  dishModel.name,
                  style: TextStyles.comfortaa_light_14.copyWith(
                    color: AppColors.colorShade01,
                  ),
                ),
              ),
              Text(
                'Ingredients',
                style: TextStyles.comfortaa_bold_16.copyWith(
                  color: AppColors.colorShade01,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2.0,
                ),
              ),
              // Container(
              //   height: 70.0,
              //   child: DishIngredients(
              //     dishModel: dishModel,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
