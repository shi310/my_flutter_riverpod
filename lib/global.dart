import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openinstall_flutter_plugin/openinstall_flutter_plugin.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

import 'common/common.dart';
import 'public/public.dart';

class Global with WidgetsBindingObserver {
  static final Global _instance = Global._internal();
  factory Global() => _instance;
  Global._internal() {
    onReady();
  }

  static Global get to => _instance;

  // 全局Key
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // 网络请求
  MyDio? myDio;

  // wss 通信
  MySocket? mySocket;

  // 是否允许连接 wss
  bool isWssCanConnection = true;

  // baseUrls 数组
  List<String> baseUrlList = [];

  // wssUrls 数组
  List<String> wssUrlList = [];

  // 用户 token
  UserInfoModel userInfo = UserInfoModel();

  // 热更新定时器
  Timer? timerHotUpdate;

  // 切换到后台断开wss的时长
  Timer? _disconnectTimer;

  // 是否使用过APP
  String isUsedApp = '1';

  // localTag
  String? localTag;

  // themeModeTag
  String? themeModeTag;

  // 应用信息
  MyAppInfoModel? myAppInfo;

  // 热更新
  ShorebirdUpdater shorebirdUpdater = ShorebirdUpdater();

  // open_install
  OpeninstallFlutterPlugin? openInstallFlutterPlugin;

  void onInit() {
    WidgetsBinding.instance.addObserver(this);
  }

  void onReady() {
    WidgetsBinding.instance.addPostFrameCallback((timestamp) async {
      MyLogger.w('APP 渲染完成，耗时:${timestamp.inMilliseconds}ms');
      showMyLoading();
      await getEnvironment();
      hideMyLoading();
    });
  }

  void _onClose() {
    MyLogger.w('检测到 App 彻底退出...');
    timerHotUpdate?.cancel();
    _disconnectTimer?.cancel();
    mySocket?.close();
    myDio?.close();
    WidgetsBinding.instance.removeObserver(this);
  }

  void _onResumed() {
    MyLogger.w('检测到 app 切换到了前台...');
    _disconnectTimer?.cancel();
    _disconnectTimer = null;
    if (isWssCanConnection) {
      mySocket?.connect();
    }
  }

  void _onPaused() {
    MyLogger.w('检测到 app 切换到了后台...');
    _disconnectTimer = Timer(Duration(minutes: 1), () {
      MyLogger.w('1 分钟未回到前台');
      mySocket?.close();
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
    if (themeModeTag != null) {
      return;
    }

    SchedulerBinding.instance.addPostFrameCallback((_) {
      final context = navigatorKey.currentContext;
      if (context != null) {
        final container = ProviderScope.containerOf(context);
        container.read(themeNotifierProvider.notifier).updateTheme(ThemeMode.system);
      } else {
        debugPrint("❌ navigatorKey.currentContext 为空，无法更新主题");
      }
    });
  }

  @override
  void didChangeLocales(List<Locale>? locales) async {
    if (localTag != null) {
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