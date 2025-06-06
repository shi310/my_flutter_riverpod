import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/models.dart';

part 'reply_message.g.dart';

/// 输入框控制器
@riverpod
class CustomerChatViewReplyMessageNotifier extends _$CustomerChatViewReplyMessageNotifier {
  @override
  QiChatMessageModel? build() {
    return null;
  }

  void update(QiChatMessageModel? value) {
    state = value;
  }

  void clear() {
    state = null;
  }
}