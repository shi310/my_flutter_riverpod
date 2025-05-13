import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../public/utils/utils.dart';
import '../common.dart';

void setThemeLight(WidgetRef ref) {
  ref.read(themeNotifierProvider.notifier).updateTheme(ThemeMode.light);
  MyCache.putFile(MyConfig.shard.themeModeKey, 'light');
  MyTheme.setSystemUIOverlayStyle(Brightness.light);
}

void setThemeDark(WidgetRef ref) {
  ref.read(themeNotifierProvider.notifier).updateTheme(ThemeMode.dark);
  MyCache.putFile(MyConfig.shard.themeModeKey, 'dark');
  MyTheme.setSystemUIOverlayStyle(Brightness.dark);
}

void setThemeSystem(WidgetRef ref) {
  ref.read(themeNotifierProvider.notifier).updateTheme(ThemeMode.system);
  MyCache.removeFile(MyConfig.shard.themeModeKey);
  MyTheme.setSystemUIOverlayStyle(WidgetsBinding.instance.platformDispatcher.platformBrightness);
}