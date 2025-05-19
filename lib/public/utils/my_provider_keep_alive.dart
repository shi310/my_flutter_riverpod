import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef MyProviderKeepAlive = void Function();

MyProviderKeepAlive myProviderKeepAlive(Ref ref, {
  Duration duration = const Duration(minutes: 10),
  String? debugKey,
}) {
  // 开始缓存: 这里是缓存数据
  // 这个缓存是没有过期时间的
  // 需要通过下面的 timer 来控制过期时间
  final link = ref.keepAlive();
  Timer? timer;

  // 重置 timer
  // 设置过期时间
  void resetTimer() {
    debugPrint("🧹 [${DateTime.now().toIso8601String()}] [$debugKey] 数据缓存时间 ${duration.inMinutes} 分钟");
    timer?.cancel();
    timer = Timer(duration, () {
      debugPrint("🧹 [$debugKey] 数据缓存已到期, 正在清理...");
      link.close();
    });
  }

  // 第一次拿到数据后调用这个
  resetTimer();

  // 在 provider 被销毁的时候调用
  // 用来清除 timer
  ref.onDispose(() {
    debugPrint("🗑️ [$debugKey] 数据缓存已清理...");
    timer?.cancel();
  });

  // 每次 widget 重新 build（watch）这个 provider 的时候，也会调用这个函数
  ref.onResume(() {
    debugPrint("📥 [${DateTime.now().toIso8601String()}] [$debugKey] 缓存期间重新被使用, 缓存时间即将更新...");
    resetTimer();
  });

  return () {
    timer?.cancel();
    link.close();
  };
}