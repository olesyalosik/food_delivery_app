import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class PageDrawer extends StatelessWidget {
  const PageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Dimensions.padding10,
            ),
            child: Center(
              child: Container(
                alignment: Alignment.bottomLeft,
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
            padding: EdgeInsets.symmetric(vertical: Dimensions.padding5),
            child: Center(
              child: Text(
                'my name',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Dimensions.padding5),
            child: Center(
              child: Text(
                'my email',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.padding10),
            child: Center(
              child: ListTile(
                title: Text(
                  'My profile',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                leading: Icon(
                  Icons.person,
                  color: Theme.of(context).iconTheme.color,
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
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                leading: Icon(
                  Icons.settings,
                  color: Theme.of(context).iconTheme.color,
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
                  'Payment method',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                leading: Icon(
                  Icons.payment,
                  color: Theme.of(context).iconTheme.color,
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
                  'Privacy policy',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                leading: Icon(
                  Icons.privacy_tip_outlined,
                  color: Theme.of(context).iconTheme.color,
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
                  'Contact us',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                leading: Icon(
                  Icons.message_rounded,
                  color: Theme.of(context).iconTheme.color,
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
