import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios_rounded,
                      color: AppColors.colorShade01),
                  Container(
                    height: Dimens.height40,
                    width: Dimens.width40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.radius15),
                      color: AppColors.colorWhite,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    CategoryElement(name: 'Burger', emoji: '🍔'),
                    CategoryElement(name: 'Pizza', emoji: '🍕'),
                    CategoryElement(name: 'Sausage', emoji: '🌭'),
                    CategoryElement(name: 'Dessert', emoji: '🍰'),
                    CategoryElement(name: 'Sushi', emoji: '🍣'),
                  ],
                ),
              ),
              const Text(
                'All dishes',
                style: TextStyle(
                  color: AppColors.colorShade01,
                  fontSize: 24.0,
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.symmetric(vertical: 10.0),
              //   height: 200,
              //   child: ListView(
              //     scrollDirection: Axis.vertical,
              //     children: <Widget>[],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
