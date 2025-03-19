import 'package:flutter/cupertino.dart';
import 'package:my_flutter_basic/public/public.dart';

part 'lang_keys.dart';
part 'key_en.dart';
part 'key_zh.dart';

class MyLocalizations {
  final Locale locale;

  MyLocalizations(this.locale);

  // 获取当前语言的本地化对象
  static MyLocalizations of(BuildContext context) {
    final localizations = Localizations.of<MyLocalizations>(context, MyLocalizations);
    return localizations ?? MyLocalizations(Locale('en', 'US'));
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': en,
    'zh': zh,
  };

  // 翻译字符串
  String translate(String key) {
    final translation = _localizedValues[locale.languageCode]?[key];
    if (translation == null) {
      MyLogger.w("Warning: Missing translation for key: $key");
      return key;
    }
    return translation;
  }

  // 获取所有语言支持的本地化键
  static Map<String, Map<String, String>> get keys => {
    MyLangMode.zh.toLocaleTag(): zh,
    MyLangMode.en.toLocaleTag(): en,
  };

  // 根据语言模式获取翻译
  static Map<String, String> getTranslations(MyLangMode mode) {
    return keys[mode.toLocaleTag()] ?? keys[MyLangMode.zh.toLocaleTag()]!;
  }

  // 支持的语言列表
  static final supportedLocales = [
    MyLangMode.zh.toLocale(),
    MyLangMode.en.toLocale(),
  ];

  static MyLangMode get defaultMode => MyLangMode.zh;
}

class MyLocalizationsDelegate extends LocalizationsDelegate<MyLocalizations> {
  const MyLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return MyLangMode.values
      .map((mode) => mode.toLocaleTag())
      .contains('${locale.languageCode}_${locale.countryCode}');
  }

  @override
  Future<MyLocalizations> load(Locale locale) async {
    return MyLocalizations(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<MyLocalizations> old) => false;
}

enum MyLangMode {
  en('en'),
  zh('zh');

  final String mode;

  const MyLangMode(this.mode);

  // 从 locale 获取对应的语言模式
  static MyLangMode fromLocale(Locale locale) {
    return MyLangMode.values.firstWhere((mode) => mode.mode == locale.languageCode,
      orElse: () => MyLangMode.en,
    );
  }

  static MyLangMode? fromTag(String? tag) {
    if (tag == null || tag.isEmpty) {
      return null;
    }
    return MyLangMode.values.firstWhere((mode) => mode.mode == tag,
      orElse: () => MyLangMode.en,
    );
  }

  // 转换为 Locale
  Locale toLocale() {
    switch (this) {
      case MyLangMode.en:
        return const Locale('en', 'US');
      case MyLangMode.zh:
        return const Locale('zh', 'CN');
    }
  }

  // 获取语言标签
  String toLocaleTag() => '${toLocale().languageCode}_${toLocale().countryCode}';

  @override
  String toString() => mode;
}