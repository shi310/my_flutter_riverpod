import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../public/utils/utils.dart';
import '../common.dart';

void setLocaleSystem(WidgetRef ref) {
  // 获取当前的语言设置
  final currentLocale = ref.read(languageNotifierProvider);
  // 如果当前语言已经是英语，则跳过更新
  if (currentLocale.languageCode == 'en') {
    return;
  }
  ref.read(languageNotifierProvider.notifier).updateLanguage(Locale('en', 'US'));
  MyCache.putFile(MyConfig.shard.localKey, 'en');
}

void setLocaleZh(WidgetRef ref) {
  // 获取当前的语言设置
  final currentLocale = ref.read(languageNotifierProvider);
  // 如果当前语言已经是中文，则跳过更新
  if (currentLocale.languageCode == 'zh') {
    return;
  }
  ref.read(languageNotifierProvider.notifier).updateLanguage(Locale('zh', 'CN'));
  MyCache.putFile(MyConfig.shard.localKey, 'zh');
}

void setLocaleEn(WidgetRef ref) {
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
}