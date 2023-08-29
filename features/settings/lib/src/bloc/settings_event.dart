import 'package:flutter/material.dart';

@immutable
abstract class SettingsEvent {}

class SwitchThemeEvent extends SettingsEvent {
  final bool isDark;

  SwitchThemeEvent({required this.isDark});
}
