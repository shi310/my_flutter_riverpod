import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_disable_send.g.dart';

/// 是否禁用发送按钮
@riverpod
class CustomerChatViewIsDisableSendNotifier extends _$CustomerChatViewIsDisableSendNotifier {
  @override
  bool build() => true;

  void set(bool value) => state = value;
}