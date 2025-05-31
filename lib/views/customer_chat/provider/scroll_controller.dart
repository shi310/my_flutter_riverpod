import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'provider.dart';

part 'scroll_controller.g.dart';

/// 滚动控制器
@riverpod
class CustomerChatViewScrollControllerNotifier extends _$CustomerChatViewScrollControllerNotifier {
  final controller = ScrollController();
  // 滚动偏移量
  double scrollOffset = 0;
  // 是否锁定焦点
  bool isLockFocus = false;
  // 定时器
  Timer? timerScrollOffset;

  @override
  void build() {
    controller.addListener(listener);
    ref.onDispose(() {
      stopTimerScrollOffset();
      controller.dispose();
    });
  }

  // 每200毫秒监听一次 scrollOffset 的值
  void startTimerScrollOffset() {
    timerScrollOffset = Timer.periodic(Duration(milliseconds: 200), (timer) {
      if (controller.hasClients && !controller.position.isScrollingNotifier.value) {
        isLockFocus = false;
      }
    });
  }

  // 停止计时
  void stopTimerScrollOffset() {
    timerScrollOffset?.cancel();
  }

  // 移动窗体
  void moveTabToBottom() async {
    await Future.microtask(() async {
      await Future.delayed(Duration(milliseconds: 500), () {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          if (controller.hasClients && !isLockFocus) {
            stopTimerScrollOffset();
            isLockFocus = true;

            await controller.animateTo(controller.position.maxScrollExtent,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
            await Future.delayed(Duration(milliseconds: 600));
            startTimerScrollOffset();
          }
        });
      });
    });
  }

  // 滚动监听
  void listener() {
    scrollOffset = controller.offset;
    if (!isLockFocus) {
      ref.read(customerChatViewTextEditingControllerNotifierProvider.notifier).focusNode.unfocus();
      ref.read(customerChatViewKeyboardTypeNotifierProvider.notifier).set(CustomerChatViewKeyboardType.text);
      isLockFocus = true;
    }
  }
}