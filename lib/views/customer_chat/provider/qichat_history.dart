import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/api/api.dart';
import '../../../public/public.dart';
import '../models/models.dart';

part 'qichat_history.g.dart';
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