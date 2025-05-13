part of 'theme.dart';

final _dark = ThemeData(
  brightness: Brightness.dark,
  platform: TargetPlatform.iOS,
  useMaterial3: true,

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      foregroundColor: const Color(0xFFFFFFFF),
      backgroundColor: const Color(0xFF586BF9),
      elevation: 0,
      maximumSize: const Size(double.infinity, 40),
      minimumSize: const Size(double.infinity, 40),
    ),
  ),
);