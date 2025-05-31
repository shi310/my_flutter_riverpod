import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/common.dart';
import '../../../public/public.dart';
import '../models/models.dart';

part 'query_entrance.g.dart';
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