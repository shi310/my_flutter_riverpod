import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_basic/views/customer_chat/models/qichat_history.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/common.dart';
import '../../generated/l10n.dart';
import '../../public/public.dart';
import 'models/models.dart';
import 'models/query_entrance.dart';

part 'provider.g.dart';

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

/// 页面是否正处于初始化阶段
@riverpod
class CustomerChatViewIsLoadingNotifier extends _$CustomerChatViewIsLoadingNotifier {
  @override
  bool build() => true;

  void set(bool value) => state = value;
}

/// lastMsgId
@riverpod
class CustomerChatViewLastMsgIdNotifier extends _$CustomerChatViewLastMsgIdNotifier {
  @override
  int? build() => null;

  void set(int? value) => state = value;
}

/// QueryEntranceModel
@riverpod
Future<QueryEntranceModel> customerChatViewQueryEntranceNotifier(Ref ref, {
  MyDio? myDio,
}) async {
  QueryEntranceModel data = QueryEntranceModel();
  await myDio?.post<QueryEntranceModel>(ApiPath.qichat.queryEntrance,
    onSuccess: (code, msg, results) async {
      data = results;
    },
    onConnectError: (e) => throw e,
    onModel: (m) => QueryEntranceModel.fromJson(m),
  );
  return data;
}

/// AssignWorkerModel
@riverpod
Future<QiChatAssignWorkerModel> customerChatViewAssignWorkerModelNotifier(Ref ref, {
  required int consultId,
  MyDio? myDio,
}) async {
  QiChatAssignWorkerModel data = QiChatAssignWorkerModel();
  await myDio?.post<QiChatAssignWorkerModel>(ApiPath.qichat.assignWorker,
    onSuccess: (code, msg, results) async {
      data = results;
    },
    data: {
      'consultId': consultId,
    },
    onConnectError: (e) => throw e,
    onModel: (m) => QiChatAssignWorkerModel.fromJson(m),
  );
  return data;
}

/// 获取起聊的历史记录
@riverpod
Future<QiChatHistoryModel> customerChatViewQichatHistoryNotifier(Ref ref, {
  required int consultId,
  required int workerId,
  MyDio? myDio,
}) async {
  QiChatHistoryModel data = QiChatHistoryModel();
  await myDio?.post<QiChatHistoryModel>(ApiPath.qichat.messageHistory,
    onSuccess: (code, msg, results) async {
      data = results;
    },
    data: {
      "chatId": 0,
      "count": 100,
      "withLastOne": true,
      "workerId": workerId,
      "consultId": consultId,
    },
    onConnectError: (e) => throw e,
    onModel: (m) => QiChatHistoryModel.fromJson(m),
  );
  return data;
}

/// 获取起聊的自动回复
@riverpod
Future<QiChatAutoReplyModel> customerChatViewQiChatAutoReplyModelNotifier(Ref ref, {
  required int consultId,
  required int workerId,
  MyDio? myDio,
}) async {
  QiChatAutoReplyModel data = QiChatAutoReplyModel();
  await myDio?.post<QiChatAutoReplyModel>(ApiPath.qichat.queryAutoReply,
    onSuccess: (code, msg, results) async {
      data = results;
    },
    data: {
      "workerId": workerId,
      "consultId": consultId,
    },
    onConnectError: (e) => throw e,
    onModel: (m) => QiChatAutoReplyModel.fromJson(m),
  );
  return data;
}