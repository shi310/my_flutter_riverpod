import 'dart:ui';

import 'package:my_flutter_basic/common/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language.g.dart';

@riverpod
class LanguageNotifier extends _$LanguageNotifier {
  @override
  Locale build() {
    String localeTag = '';
    if (GlobalController.to.localTag != null) {
      localeTag = GlobalController.to.localTag!;
    } else {
      final systemLocale = PlatformDispatcher.instance.locale;
      final systemLocaleTag = systemLocale.languageCode;
      localeTag = systemLocaleTag;
    }

    switch (localeTag) {
      case 'zh':
        return const Locale('zh', 'CN');
      case 'en':
        return const Locale('en', 'US');
      default:
        return const Locale('zh', 'CN');
    }
  }

  // 更改语言的方法
  void updateLanguage(Locale newLocale) {
    state = newLocale;
  }
}