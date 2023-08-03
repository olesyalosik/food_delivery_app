import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class CatalogueForm extends StatefulWidget {
  const CatalogueForm({super.key});

  @override
  State<CatalogueForm> createState() => _CatalogueFormState();
}

class _CatalogueFormState extends State<CatalogueForm> {
  List _dishes = [
    {},
  ];
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
                  const Text(
                    'All dishes',
                    style: TextStyle(
                      color: AppColors.colorShade01,
                      fontSize: 24.0,
                    ),
                  ),
                  Container(
                    height: Dimens.height40,
                    width: Dimens.width40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.radius15),
                      color: AppColors.colorWhite,
                    ),
                    child: Icon(Icons.person),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180.0,
                    height: Dimens.height260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.radius15),
                      color: AppColors.colorWhite,
                    ),
                  ),
                  Container(
                    width: 180.0,
                    height: Dimens.height260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimens.radius15),
                      color: AppColors.colorWhite,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
