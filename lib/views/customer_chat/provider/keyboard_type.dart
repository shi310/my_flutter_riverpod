import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'keyboard_type.g.dart';

/// 键盘类型：表情/文本
@riverpod
class CustomerChatViewKeyboardTypeNotifier extends _$CustomerChatViewKeyboardTypeNotifier {
  @override
  CustomerChatViewKeyboardType build() => CustomerChatViewKeyboardType.text;

  void set(CustomerChatViewKeyboardType value) => state = value;
}

// 键盘类型：表情/文本
enum CustomerChatViewKeyboardType {
  text,
  emoticons,
}