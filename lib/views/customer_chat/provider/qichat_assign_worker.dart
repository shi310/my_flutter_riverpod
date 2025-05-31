import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/api/api.dart';
import '../../../public/public.dart';
import '../models/models.dart';

part 'qichat_assign_worker.g.dart';

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