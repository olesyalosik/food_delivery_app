import 'package:core/core.dart';
import 'package:catalogue/src/bloc/catalogue_bloc.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:main_page/main_page.dart';
import 'widgets/dish_element.dart';

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
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            centerTitle: true,
            iconTheme: Theme.of(context).iconTheme,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              "All dishes",
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
            leading: InkWell(
              onTap: () => context.navigateTo(
                MainPageRoute(),
              ),
              child: Icon(
                Icons.arrow_back_ios_rounded,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: Dimensions.padding10),
                child: Icon(
                  Icons.person,
                ),
              ),
            ],
          ),
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.colorAccent,
                  ),
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
                      (index) => DishElement(
                        dishModel: state.dishes[index],
                      ),
                    ),
                  ),
                ),
        ),
      );
    });
  }
}
