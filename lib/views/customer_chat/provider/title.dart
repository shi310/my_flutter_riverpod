import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/common.dart';
import '../../../generated/l10n.dart';

part 'title.g.dart';
/// 页面的标题
@riverpod
class CustomerChatViewTitleNotifier extends _$CustomerChatViewTitleNotifier {
  @override
  String build() {
    final context = MyPages.globalNavigatorKey.currentContext;
    if (context != null) {
      return S.of(context).connecting;
    }
    return '';
  }

  void set(String value) => state = value;
}