import 'dart:async';
import 'global_controller.dart';
import 'init_deeplink.dart';
import 'init_language.dart';
import 'init_theme.dart';

Future<void> initialization() async {
  await GlobalController.to.onInit();
  await initDeepLink();
  await initTheme();
  await initLanguage();
}