import 'package:flutter/material.dart';

@immutable
abstract class SettingsEvent {}

class OnSwitchThemeEvent extends SettingsEvent {
  final bool isDark;

  OnSwitchThemeEvent({required this.isDark});
}
