import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/api/api.dart';
import '../../../public/public.dart';
import '../models/models.dart';

part 'qichat_auto_reply.g.dart';

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