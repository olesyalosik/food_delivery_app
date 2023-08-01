import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightBackgroundColor,
        body: Padding(
          padding: EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 20.0,
            bottom: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Dimens.height40,
                    width: Dimens.width40,
                    decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      borderRadius: BorderRadius.circular(Dimens.radius15),
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Row(
                          children: [
                            Text(
                              'Delivery to',
                              style: TextStyle(
                                color: AppColors.colorShade01,
                                fontSize: 14.0,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.colorShade01,
                                decorationThickness: 2.0,
                              ),
                            ),
                            Icon(Icons.arrow_drop_down_sharp),
                          ],
                        ),
                      ),
                      Center(
                        child: Text(
                          '*address*',
                          style: TextStyle(
                            color: AppColors.colorPrimaryGradient,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: Dimens.height40,
                    width: Dimens.width40,
                    decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      borderRadius: BorderRadius.circular(Dimens.radius15),
                    ),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enjoy Delicious food',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: AppColors.colorShade01,
                  ),
                ),
              ),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    CategoryElement(
                      name: 'Burger',
                      emoji: '🍔',
                    ),
                    CategoryElement(
                      name: 'Pizza',
                      emoji: '🍕',
                    ),
                    CategoryElement(
                      name: 'Sausage',
                      emoji: '🌭',
                    ),
                    CategoryElement(
                      name: 'Dessert',
                      emoji: '🍰',
                    ),
                    CategoryElement(
                      name: 'Sushi',
                      emoji: '🍣',
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular items',
                    style: TextStyle(
                        fontSize: 16.0, color: AppColors.colorShade01),
                  ),
                  Text(
                    'View all (n)',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: AppColors.colorPrimaryGradient,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.colorPrimaryGradient,
                      decorationThickness: 2.0,
                    ),
                  ),
                ],
              ),
              Container(
                width: Dimens.width200,
                height: Dimens.height260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.radius15),
                  color: AppColors.colorWhite,
                ),
              ),
              SimpleButton(text: 'add to cart'),
            ],
          ),
        ),
      ),
    );
  }
}
