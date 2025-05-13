import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/common.dart';
import '../../generated/l10n.dart';
import '../../public/public.dart';

class TestView extends ConsumerWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Test View')),
      backgroundColor: Theme.of(context).myColors.background,
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2.5,
        children: [
          ElevatedButton(onPressed: () {
            getEnvironment();
          }, child: FittedBox(child: Text('获取配置'))),

          ElevatedButton(
            onPressed: () {
              showMySnack(child: Text('顶部弹窗的文案在这里', style: TextStyle(color: Colors.white)));
            },
            child: FittedBox(child: Text('顶部提示')),
          ),

          ElevatedButton(
            onPressed: () {
              showMyToast(child: Text('中部弹窗的文案在这里', style: TextStyle(color: Colors.white)));
            },
            child: FittedBox(child: Text('中部提示')),
          ),

          Center(child: Text(S.of(context).fileSizeOut(30))),

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
            child: FittedBox(child: Text('系统语言')),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).updateTheme(ThemeMode.light);
              MyCache.putFile(MyConfig.shard.themeModeKey, 'light');
            },
            child: Text('亮色'),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).updateTheme(ThemeMode.dark);
              MyCache.putFile(MyConfig.shard.themeModeKey, 'dark');
            },
            child: Text('暗色'),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).updateTheme(ThemeMode.system);
              MyCache.removeFile(MyConfig.shard.themeModeKey);
            },
            child: FittedBox(child: Text('系统主题')),
          ),

          ElevatedButton(
            onPressed: () {

            },
            child: FittedBox(child: Text('112313')),
          ),
        ],
      ),
    );
  }
}