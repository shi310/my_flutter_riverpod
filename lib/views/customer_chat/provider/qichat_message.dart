import 'package:fixnum/fixnum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/models.dart';

part 'qichat_message.g.dart';

/// 起聊的消息列表
@riverpod
class CustomerChatViewQichatMessageNotifier extends _$CustomerChatViewQichatMessageNotifier {
  @override
  List<QiChatMessageModel> build() => [];

  void add(QiChatMessageModel value) {
    state = [...state, value];
  }

  void addAll(List<QiChatMessageModel> value) {
    state = [...state, ...value];
  }

  void clear() {
    state = [];
  }

  void remove(Int64 msgId) {
    state = state.where((e) => e.msgId != msgId).toList();
  }

  void replace(QiChatMessageModel oldModel, QiChatMessageModel newModel) {
    final index = state.indexWhere((e) => e.id == oldModel.id);
    if (index == -1) return;
    state[index] = newModel;
  }

  void update(QiChatMessageModel value) {
    state = state.map((e) => e.msgId == value.msgId ? value : e).toList();
  }
}