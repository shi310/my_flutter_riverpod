import 'package:flutter/services.dart';

import '../../global.dart';
import '../../public/utils/my_cache.dart';
import '../common.dart';

Future<void> initTheme() async {
  // 初始化主题
  final themeModeCache = await MyCache.getFile(MyConfig.shard.themeModeKey);
  final themeModeTag = await themeModeCache?.readAsString();
  Global.to.themeModeTag = themeModeTag;

  // 锁定竖屏，禁止旋转屏幕，按需开启
  final option = [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown];
  await SystemChrome.setPreferredOrientations(option);

  // 去掉安卓手机的底部导航栏，按需开启
  // await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
}