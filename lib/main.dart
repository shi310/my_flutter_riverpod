import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_basic/common/common.dart';
import 'package:my_flutter_basic/common/provider/theme.dart';
import 'package:my_flutter_basic/public/public.dart';
import 'package:my_flutter_basic/views/views.dart';
import 'package:my_flutter_basic/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageNotifierProvider);
    final themeMode = ref.watch(themeNotifierProvider);

    return MaterialApp(
      navigatorKey: GlobalController.to.navigatorKey,
      locale: locale,
      themeMode: themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: HomeView(),
      builder: (context, child) => MyAlert(key: MyAlert.globalKey, child: child),
    );
  }
}

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Home View')),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2.5,
        children: [
          ElevatedButton(onPressed: () async {
            await Navigator.push(context, MaterialPageRoute(builder: (context) => Text01View()));
          }, child: Text('全局变量')),

          ElevatedButton(onPressed: () async {
            await Navigator.push(context, MaterialPageRoute(builder: (context) => Text02View()));
          }, child: Text('请求数据')),

          ElevatedButton(onPressed: () async {
            await Navigator.push(context, MaterialPageRoute(builder: (context) => Text03View()));
          }, child: Text('DIO请求')),

          ElevatedButton(onPressed: () {
            getEnvironment();
          }, child: Text('获取配置')),

          ElevatedButton(
            onPressed: () {
              showMySnack(child: Text('顶部弹窗的文案在这里', style: TextStyle(color: Colors.white)));
            },
            child: Text('顶部提示'),
          ),

          ElevatedButton(
            onPressed: () {
              showMyToast(child: Text('中部弹窗的文案在这里', style: TextStyle(color: Colors.white)));
            },
            child: Text('中部提示'),
          ),

          Center(child: Text(S.of(context).title)),

          ElevatedButton(
            onPressed: () {
              // 获取当前的语言设置
              final currentLocale = ref.read(languageNotifierProvider);

              // 如果当前语言已经是英语，则跳过更新
              if (currentLocale.languageCode == 'en') {
                return;
              }

              ref.read(languageNotifierProvider.notifier).updateLanguage(Locale('en', 'US'));
              MyCache.putFile(MyConfig.shard.localKey, 'en');

            },
            child: Text('英语'),
          ),

          ElevatedButton(
            onPressed: () {
              // 获取当前的语言设置
              final currentLocale = ref.read(languageNotifierProvider);

              // 如果当前语言已经是英语，则跳过更新
              if (currentLocale.languageCode == 'zh') {
                return;
              }

              ref.read(languageNotifierProvider.notifier).updateLanguage(Locale('zh', 'CN'));
              MyCache.putFile(MyConfig.shard.localKey, 'zh');

            },
            child: Text('中文'),
          ),

          ElevatedButton(
            onPressed: () {
              final systemLocale = PlatformDispatcher.instance.locale;
              final systemLocaleTag = systemLocale.languageCode;

              switch (systemLocaleTag) {
                case 'zh':
                  ref.read(languageNotifierProvider.notifier).updateLanguage(Locale('zh', 'CN'));
                case 'en':
                  ref.read(languageNotifierProvider.notifier).updateLanguage(Locale('en', 'US'));
                default:
                  ref.read(languageNotifierProvider.notifier).updateLanguage(Locale('zh', 'CN'));
              }
              MyCache.removeFile(MyConfig.shard.localKey);
            },
            child: Text('系统语言'),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).updateLanguage(ThemeMode.light);
              MyCache.putFile(MyConfig.shard.themeModeKey, 'light');
            },
            child: Text('亮色'),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).updateLanguage(ThemeMode.dark);
              MyCache.putFile(MyConfig.shard.themeModeKey, 'dark');
            },
            child: Text('暗色'),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).updateLanguage(ThemeMode.system);
              MyCache.removeFile(MyConfig.shard.themeModeKey);
            },
            child: Text('系统主题'),
          ),
        ],
      ),
    );
  }
}