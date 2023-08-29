import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:home/src/bloc/home_bloc.dart';
import 'package:catalogue/catalogue.dart';
import 'widgets/dish_element.dart';

class HomeForm extends StatefulWidget {
  const HomeForm({super.key});

  @override
  State<HomeForm> createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (BuildContext context, HomeState state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            appBar: AppBar(
              iconTheme: Theme.of(context).iconTheme,
              centerTitle: true,
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
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
            drawer: PageDrawer(),
            body: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.colorAccent,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.padding10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Enjoy Delicious food',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          height: Dimensions.categorySizedBoxHeight,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.all(Dimensions.padding5),
                            itemCount: Sections.values.length,
                            itemBuilder: (BuildContext context, int index) {
                              return SectionElement(
                                  name: '${Sections.values[index].toString()}',
                                  image:
                                      'assets/pictures/${Sections.values[index].name}.png');
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const Divider(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Popular items',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            InkWell(
                              onTap: () => context.pushRoute(CatalogueRoute()),
                              child: Text(
                                'View all (${state.dishes.length})',
                                style: TextStyles.comfortaa_light_16.copyWith(
                                  color: AppColors.colorPrimaryGradient,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: Dimensions.lineWidth,
                                  decorationColor:
                                      AppColors.colorPrimaryGradient,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.popularItemizedBoxHeight,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.all(Dimensions.padding5),
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return DishElement(
                                  dishModel: state.dishes[index]);
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const Divider(),
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        );
      },
    );
  }
}
