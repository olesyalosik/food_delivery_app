import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:core_ui/core_ui.dart';
import 'package:settings/settings.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc(),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (BuildContext context, SettingsState state) {
          return MaterialApp.router(
            routerDelegate: appLocator.get<AppRouter>().delegate(),
            routeInformationParser:
                appLocator.get<AppRouter>().defaultRouteParser(),
            theme: state.isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
          );
        },
      ),
    );
  }
}
