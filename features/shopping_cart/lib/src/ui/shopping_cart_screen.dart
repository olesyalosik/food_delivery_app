import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:core_ui/core_ui.dart';

@RoutePage()
class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          iconTheme: Theme.of(context).iconTheme,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'Pending orders',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        ),
      ),
    );
  }
}
