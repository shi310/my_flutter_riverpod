import 'package:flutter/material.dart';

final themeDataLight = ThemeData(
  brightness: Brightness.light,
  platform: TargetPlatform.iOS,
  useMaterial3: true,

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      foregroundColor: const Color(0xFFFFFFFF),
      backgroundColor: const Color(0xFF586BF9),
      elevation: 0,
    ),
  ),

  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      padding: EdgeInsets.zero,
      elevation: 0,
    ),
  ),
);