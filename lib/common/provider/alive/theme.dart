import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../public/public.dart';
import '../../common.dart';

part 'theme.g.dart';

@Riverpod(keepAlive: true)
class ThemeNotifier extends _$ThemeNotifier {
  String? themeModeTag;

  @override
  ThemeMode build() {
    return ThemeMode.system;
  }

  Future<void> init() async {
    // 锁定竖屏，禁止旋转屏幕，按需开启
    final option = [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown];
    await SystemChrome.setPreferredOrientations(option);

    // 读取本地储存的主题信息
    final themeModeCache = await MyCache.getFile(MyConfig.shard.themeModeKey);
    themeModeTag = await themeModeCache?.readAsString();

    if (themeModeTag != null) {
      switch (themeModeTag) {
        case 'light':
          _setSystemUIOverlayStyle(Brightness.light);
          state = ThemeMode.light;
        case 'dark':
          _setSystemUIOverlayStyle(Brightness.dark);
          state = ThemeMode.dark;
        default:
          final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
          _setSystemUIOverlayStyle(brightness);
          state = ThemeMode.system;
      }
    } else {
      final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
      _setSystemUIOverlayStyle(brightness);
      state = ThemeMode.system;
    }
  }

  void light() {
    state = ThemeMode.light;
    themeModeTag = 'light';
    MyCache.putFile(MyConfig.shard.themeModeKey, 'light');
    Brightness brightness = Brightness.light;
    _setSystemUIOverlayStyle(brightness);
  }

  void dark() {
    state = ThemeMode.dark;
    themeModeTag = 'dark';
    MyCache.putFile(MyConfig.shard.themeModeKey, 'dark');
    Brightness brightness = Brightness.dark;
    _setSystemUIOverlayStyle(brightness);
  }

  void system() {
    state = ThemeMode.system;
    themeModeTag = null;
    MyCache.removeFile(MyConfig.shard.themeModeKey);
    Brightness brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
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