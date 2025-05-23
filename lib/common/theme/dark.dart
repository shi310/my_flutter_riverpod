import 'package:flutter/material.dart';

final themeDataDark = ThemeData(
  brightness: Brightness.dark,
  platform: TargetPlatform.iOS,
  useMaterial3: true,

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      foregroundColor: const Color(0xFFFFFFFF),
      backgroundColor: const Color(0xFF586BF9),
      elevation: 0,
    ),
  ),
);