import 'package:core/core.dart';
import 'package:catalogue/src/bloc/catalogue_bloc.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:detailed_dish_view/detailed_dish_view.dart';

class CatalogueForm extends StatefulWidget {
  const CatalogueForm({super.key});

  @override
  State<CatalogueForm> createState() => _CatalogueFormState();
}

class _CatalogueFormState extends State<CatalogueForm> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogueBloc, CatalogueState>(
        builder: (BuildContext context, CatalogueState state) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.lightBackgroundColor,
          appBar: AppBar(
            backgroundColor: AppColors.lightBackgroundColor,
            title: Center(
              child: Text(
                "All dishes",
                style: TextStyles.comfortaa_bold_24
                    .copyWith(color: AppColors.colorShade01),
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
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.padding10,
                    vertical: Dimensions.padding20,
                  ),
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List<Widget>.generate(
                      state.dishes.length,
                      (index) => InkWell(
                        onTap: () => context.pushRoute(DetailedDishViewRoute(
                          dishModel: state.dishes[index],
                        )),
                        child: DishElement(
                          dishModel: state.dishes[index],
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      );
    });
  }
}
