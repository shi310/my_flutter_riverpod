import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'provider.dart';

part 'text_controller.g.dart';

/// 输入框控制器
@riverpod
class CustomerChatViewTextEditingControllerNotifier extends _$CustomerChatViewTextEditingControllerNotifier {
  final controller = TextEditingController();
  final focusNode = FocusNode();


  @override
  void build() {
    controller.addListener(listenerText);
    focusNode.addListener(listenerFocus);

    ref.onDispose(() {
      controller.dispose();
      focusNode.dispose();
    });
  }

  // 输入框监听
  void listenerText() {
    final customerChatViewIsDisableSend = ref.read(customerChatViewIsDisableSendNotifierProvider.notifier);
    if (controller.text.isNotEmpty) {
      customerChatViewIsDisableSend.set(false);
    } else {
      customerChatViewIsDisableSend.set(true);
    }
  }

  // 焦点监听
  void listenerFocus() {
    final keyboardType = ref.read(customerChatViewKeyboardTypeNotifierProvider.notifier);
    final scrollController = ref.read(customerChatViewScrollControllerNotifierProvider.notifier);
    if (focusNode.hasFocus) {
      keyboardType.set(CustomerChatViewKeyboardType.text);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        scrollController.moveTabToBottom();
      });
    }
  }
}