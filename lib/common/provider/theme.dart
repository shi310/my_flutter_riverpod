import 'package:flutter/material.dart';
import 'package:my_flutter_basic/common/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  ThemeMode build() {
    if (GlobalController.to.themeModeTag != null) {
      switch (GlobalController.to.themeModeTag) {
        case 'light':
          return ThemeMode.light;
        case 'dark':
          return ThemeMode.dark;
        default:
          return ThemeMode.system;
      }
    } else {
      return ThemeMode.system;
    }
  }

  void updateLanguage(ThemeMode themeMode) {
    state = themeMode;
  }
}