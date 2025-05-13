import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'common/common.dart';
import 'generated/l10n.dart';
import 'global.dart';
import 'public/public.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 全局控制器
  Global.to.onInit();

  await Future.wait([
    // 初始化主题
    initTheme(),
    // 初始化语言
    initLanguage(),
    // 初始化深度链接
    initDeepLink(),
    // 初始化APP信息
    initDeviceInfo(),
    // 初始化OpenInstall
    initOpenInstall(),
    // 初始化APP数据
    initAppData(),
  ]);

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageNotifierProvider);
    final themeMode = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      routerConfig: MyPages.routerConfig,
      locale: locale,
      themeMode: themeMode,
      theme: MyTheme.light,
      darkTheme: MyTheme.dark,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      builder: (context, child) => MyAlert(key: MyAlert.globalKey, child: child),
    );
  }
}