import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import '../../settings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Settings',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(Dimensions.padding10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dark theme',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Switch(
                      onChanged: (bool value) {
                        BlocProvider.of<SettingsBloc>(context).add(
                          SwitchThemeEvent(isDark: value),
                        );
                      },
                      value: state.isDark,
                      activeColor: AppColors.colorPrimaryGradient,
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
