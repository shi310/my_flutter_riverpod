part of '../view.dart';

// 更新发送验证码按钮的状态
void _updateSendCodeState({
  required SendCodeState state,
  required WidgetRef ref
}) {
  final loginViewSendCodeState = ref.read(loginViewSendCodeStateNotifierProvider.notifier);
  loginViewSendCodeState.set(state);
}