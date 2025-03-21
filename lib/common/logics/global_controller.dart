import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_device_info/models/my_device_info_model.dart';
import 'package:my_flutter_basic/public/public.dart';

import '../provider/language.dart';
import '../provider/theme.dart';

class GlobalController with WidgetsBindingObserver {
  static final GlobalController _instance = GlobalController._internal();
  factory GlobalController() => _instance;
  GlobalController._internal();

  static GlobalController get to => _instance;

  // 全局Key
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // 网络请求
  MyDio? myDio;

  // wss 通信
  MyWss? myWss;

  // 是否允许连接 wss
  bool isWssCanConnection = true;

  // baseUrls 数组
  List<String> baseUrlList = [];

  // wssUrls 数组
  List<String> wssUrlList = [];

  // 用户 token
  String userToken = '';

  // 热更新定时器
  Timer? timerHotUpdate;

  // 应用信息
  MyDeviceInfoModel? deviceInfo;

  // 切换到后台断开wss的时长
  Timer? _disconnectTimer;

  // 是否使用过APP
  String isUsedApp = '1';

  // localTag
  String? localTag;

  // themeModeTag
  String? themeModeTag;

  Future<void> onInit() async {
    WidgetsBinding.instance.addObserver(this);
  }

  void _onClose() {
    MyLogger.w('检测到 App 彻底退出...');
    timerHotUpdate?.cancel();
    _disconnectTimer?.cancel();
    myWss?.close();
    myDio?.cancel();
    WidgetsBinding.instance.removeObserver(this);
  }

  void _onResumed() {
    MyLogger.w('检测到 app 切换到了前台...');
    _disconnectTimer?.cancel();
    _disconnectTimer = null;
    if (isWssCanConnection) {
      myWss?.connect();
    }
  }

  void _onPaused() {
    MyLogger.w('检测到 app 切换到了后台...');
    _disconnectTimer = Timer(Duration(minutes: 1), () {
      MyLogger.w('1 分钟未回到前台，断开 WebSocket');
      myWss?.close();
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        _onResumed();
        break;
      case AppLifecycleState.paused:
        _onPaused();
        break;
      case AppLifecycleState.detached:
        _onClose();
        break;
      default:
        break;
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  void didChangePlatformBrightness() async {
    if (GlobalController.to.themeModeTag != null) {
      return;
    }

    SchedulerBinding.instance.addPostFrameCallback((_) {
      final context = navigatorKey.currentContext;
      if (context != null) {
        final container = ProviderScope.containerOf(context);
        container.read(themeNotifierProvider.notifier).updateLanguage(ThemeMode.system);
      } else {
        debugPrint("❌ navigatorKey.currentContext 为空，无法更新主题");
      }
    });
  }

  @override
  void didChangeLocales(List<Locale>? locales) async {
    if (GlobalController.to.localTag != null) {
      return;
    }

    SchedulerBinding.instance.addPostFrameCallback((_) {
      final context = navigatorKey.currentContext;
      if (context != null) {
        final container = ProviderScope.containerOf(context);
        final systemLocale = PlatformDispatcher.instance.locale;
        final systemLocaleTag = systemLocale.languageCode;

        switch (systemLocaleTag) {
          case 'zh':
            container.read(languageNotifierProvider.notifier).updateLanguage(Locale('zh', 'CN'));
          case 'en':
            container.read(languageNotifierProvider.notifier).updateLanguage(Locale('en', 'US'));
          default:
            container.read(languageNotifierProvider.notifier).updateLanguage(Locale('zh', 'CN'));
        }
      } else {
        debugPrint("❌ navigatorKey.currentContext 为空，无法更新语言");
      }
    });
  }
}