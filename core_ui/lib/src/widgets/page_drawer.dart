import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class PageDrawer extends StatelessWidget {
  const PageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.lightBackgroundColor,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(Dimensions.padding10),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                width: 100.0,
                height: 100.0,
                child: FittedBox(
                  child: Image.asset('assets/pictures/profile_picture.jpg'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.padding10),
            child: Center(
              child: ListTile(
                title: Text(
                  'My profile',
                  style: TextStyles.comfortaa_light_14.copyWith(
                    color: AppColors.colorShade01,
                  ),
                ),
                leading: Icon(
                  Icons.person,
                  color: AppColors.colorShade01,
                  size: Dimensions.iconSize,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.padding10),
            child: Center(
              child: ListTile(
                title: Text(
                  'Settings',
                  style: TextStyles.comfortaa_light_14.copyWith(
                    color: AppColors.colorShade01,
                  ),
                ),
                leading: Icon(
                  Icons.settings,
                  color: AppColors.colorShade01,
                  size: Dimensions.iconSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
