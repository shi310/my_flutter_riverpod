import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_basic/common/provider/alive/shore_bird.dart';

import 'common/common.dart';
import 'public/public.dart';

class Global with WidgetsBindingObserver {
  static final Global _instance = Global._internal();
  factory Global() => _instance;
  Global._internal();

  static Global get to => _instance;

  // 全局控制器
  ProviderContainer  providerContainer = ProviderContainer();

  // 切换到后台断开wss的时长
  Timer? _disconnectTimer;

  void onInit() {
    WidgetsBinding.instance.addObserver(this);
  }

  void onReady() {
    Future.microtask(() {
      Future.delayed(Duration.zero, () {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          showMyLoading();
          await getEnvironment();
          hideMyLoading();
        });
      });
    });
  }

  void _onClose() {
    MyLogger.w('检测到 App 彻底退出...');
    _disconnectTimer?.cancel();
    Global.to.providerContainer.read(shoreBirdUpdateNotifierProvider.notifier).stop();
    Global.to.providerContainer.read(mySocketForAppNotifierProvider.notifier).close();
    Global.to.providerContainer.read(myDioForAppNotifierProvider.notifier).close();
    WidgetsBinding.instance.removeObserver(this);
  }

  void _onResumed() {
    MyLogger.w('检测到 app 切换到了前台...');
    _disconnectTimer?.cancel();
    _disconnectTimer = null;
    providerContainer.read(mySocketForAppNotifierProvider)?.connect();
  }

  void _onPaused() {
    MyLogger.w('检测到 app 切换到了后台...');
    _disconnectTimer = Timer(Duration(minutes: 1), () {
      MyLogger.w('1 分钟未回到前台');
      providerContainer.read(mySocketForAppNotifierProvider)?.close();
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
  void didChangePlatformBrightness() {
    // 如果本地有保存的主题信息，当然就不用跟随系统切换了呗
    if (providerContainer.read(themeNotifierProvider.notifier).themeModeTag != null) {
      return;
    }
    // 设置语言为手机的系统主题
    providerContainer.read(themeNotifierProvider.notifier).system();
  }

  @override
  void didChangeLocales(List<Locale>? locales) {
    // 如果本地有保存的语言信息，当然就不用跟随系统切换了呗
    if (providerContainer.read(localeNotifierProvider.notifier).localeTag != null) {
      return;
    }
    // 设置语言为手机的系统语言
    providerContainer.read(localeNotifierProvider.notifier).system();
  }
}

// 页面的状态
// 用于判断是否已经销毁
class MyViewState {
  bool _isDisposed = false;
  void dispose() {
    _isDisposed = true;
  }
  bool get isClosed => _isDisposed;
}