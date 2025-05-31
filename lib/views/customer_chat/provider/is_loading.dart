import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_loading.g.dart';

/// 页面是否正处于初始化阶段
@riverpod
class CustomerChatViewIsLoadingNotifier extends _$CustomerChatViewIsLoadingNotifier {
  @override
  bool build() => true;

  void set(bool value) => state = value;
}