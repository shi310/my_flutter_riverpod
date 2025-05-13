import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../global.dart';

part 'theme.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  ThemeMode build() {
    if (Global.to.themeModeTag != null) {
      switch (Global.to.themeModeTag) {
        case 'light':
          _setSystemUIOverlayStyle(Brightness.light);
          return ThemeMode.light;
        case 'dark':
          _setSystemUIOverlayStyle(Brightness.dark);
          return ThemeMode.dark;
        default:
          final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
          _setSystemUIOverlayStyle(brightness);
          return ThemeMode.system;
      }
    } else {
      final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
      _setSystemUIOverlayStyle(brightness);
      return ThemeMode.system;
    }
  }

  void updateTheme(ThemeMode themeMode) {
    state = themeMode;
    Brightness brightness = Brightness.light;
    if (themeMode == ThemeMode.dark) {
      brightness = Brightness.dark;
    } else if (themeMode == ThemeMode.system) {
      brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
    }
    _setSystemUIOverlayStyle(brightness);
  }
}

Future<void> _setSystemUIOverlayStyle(Brightness brightness) async {
  // 如果是 web 就不设置
  if (kIsWeb) return;

  // 如果不是安卓手机就不设置
  if (defaultTargetPlatform != TargetPlatform.android) return;

  // 设置系统导航栏样式
  final style = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: brightness,
    statusBarBrightness: brightness,
    systemNavigationBarColor: brightness == Brightness.light ? Colors.white : Colors.black,
    systemNavigationBarIconBrightness: brightness == Brightness.light ? Brightness.dark : Brightness.light,
    systemNavigationBarDividerColor: brightness == Brightness.light ? Colors.white : Colors.black,
  );

  // 设置系统导航栏模式
  // await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  // 应用样式
  SystemChrome.setSystemUIOverlayStyle(style);
}