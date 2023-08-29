import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: Theme.of(context).iconTheme,
          title: Text(
            'Favorite',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ),
      ),
    );
  }
}
