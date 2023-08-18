import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:home/src/bloc/home_bloc.dart';
import 'package:catalogue/catalogue.dart';
import 'package:navigation/navigation.dart';

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
          backgroundColor: AppColors.lightBackgroundColor,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.lightBackgroundColor,
            title: Column(
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
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  '*address*',
                  style: TextStyles.comfortaa_light_14.copyWith(
                    color: AppColors.colorPrimaryGradient,
                  ),
                ),
              ],
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 30.0,
                  end: 10.0,
                ),
                child: Icon(
                  Icons.person,
                  size: Dimensions.iconSize,
                ),
              ),
            ],
          ),
          drawer: PageDrawer(),
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Enjoy Delicious food',
                          style: TextStyles.comfortaa_light_24,
                        ),
                      ),
                      Container(
                        height: 120,
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
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular items',
                            style: TextStyles.comfortaa_light_16
                                .copyWith(color: AppColors.colorShade01),
                          ),
                          InkWell(
                            onTap: () => context.pushRoute(CatalogueRoute()),
                            child: Text(
                              'View all (${state.dishes.length})',
                              style: TextStyles.comfortaa_light_14.copyWith(
                                  color: AppColors.colorPrimaryGradient,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2.0,
                                  decorationColor:
                                      AppColors.colorPrimaryGradient),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 280.0,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.all(Dimensions.padding5),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return DishElement(dishModel: state.dishes[index]);
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const Divider(),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      );
    });
  }
}
