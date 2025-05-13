import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'my_styles.dart';
part 'my_colors.dart';
part 'my_icons.dart';
part 'light.dart';
part 'dark.dart';

extension ThemeColorExtension on ThemeData {
  static final _cacheColor = <Brightness, MyColors>{};
  MyColors get myColors => _cacheColor.putIfAbsent(brightness, () => MyColors(brightness: brightness));

  static final _cacheStyle = <Brightness, MyStyles>{};
  MyStyles get myStyles => _cacheStyle.putIfAbsent(brightness, () => MyStyles(myColors: myColors));

  static final _cacheIcons = <Brightness, MyIcons>{};
  MyIcons get myIcons => _cacheIcons.putIfAbsent(brightness, () => MyIcons(brightness: brightness));
}

class MyTheme {
  static final MyTheme _instance = MyTheme._internal();
  factory MyTheme() => _instance;
  MyTheme._internal();

  static final dark = _dark;
  static final light = _light;

  static Future<void> setSystemUIOverlayStyle(Brightness brightness) => _instance._setSystemUIOverlayStyle(brightness);
  static void setPreferredOrientations() => _instance._setPreferredOrientations();
  static void removeNavigationBar() => _instance._removeNavigationBar();

  Future<void> _setSystemUIOverlayStyle(Brightness brightness) async {
    if (kIsWeb) return;
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

  /// - 强制竖屏
  Future<void> _setPreferredOrientations() async {
    var option = [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown];
    await SystemChrome.setPreferredOrientations(option);
  }

  /// - 去掉安卓手机的底部导航栏
  Future<void> _removeNavigationBar() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
  }
}