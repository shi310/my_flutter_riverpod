import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../public/public.dart';
import '../../common.dart';

part 'locale.g.dart';

@Riverpod(keepAlive: true)
class LocaleNotifier extends _$LocaleNotifier {
  // 这里是从本地读取的 tag
  // 值不为空，就说明本地有储存的语言信息
  String? localeTag;

  @override
  Locale build() {
    return Locale('zh', 'CN');
  }

  // 初始化
  Future<void> init() async {
    // 初始化语言
    final localeCache = await MyCache.getFile(MyConfig.shard.localKey);
    localeTag = await localeCache?.readAsString();

    if (localeTag != null) {
      switch (localeTag) {
        case 'zh':
          state = Locale('zh', 'CN');
        case 'en':
          state = Locale('en', 'US');
        default:
          state = Locale('zh', 'CN');
      }
    } else {
      final systemLocale = PlatformDispatcher.instance.locale;
      state = systemLocale;
    }
  }

  // 更改语言为中文
  void zh() {
    if (state.languageCode == 'zh') {
      return;
    }
    state = Locale('zh', 'CN');
    MyCache.putFile(MyConfig.shard.localKey, 'zh');
    localeTag = 'zh';
  }

  // 更改语言为英文
  void en() {
    if (state.languageCode == 'en') {
      return;
    }
    state = Locale('en', 'US');
    MyCache.putFile(MyConfig.shard.localKey, 'en');
    localeTag = 'en';
  }

  // 更改语言为跟随系统
  void system() {
    final systemLocale = PlatformDispatcher.instance.locale;
    final systemLocaleTag = systemLocale.languageCode;

    switch (systemLocaleTag) {
      case 'zh':
        state = Locale('zh', 'CN');
      case 'en':
        state = Locale('en', 'US');
      default:
        state = Locale('zh', 'CN');
    }

    MyCache.removeFile(MyConfig.shard.localKey);
    localeTag = null;
  }
}