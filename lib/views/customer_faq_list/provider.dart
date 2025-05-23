import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/common.dart';
import '../../public/public.dart';

part 'provider.g.dart';

// 客服列表
// 缓存：10 分钟
@riverpod
Future<CustomerFaqListModel> customerFaqListNotifier(Ref ref, {
  required CustomerFaqTypeModel arguments,
}) async {
  myProviderKeepAlive(ref, debugKey: "customerList");

  final typeId = arguments.id;

  CustomerFaqListModel data = CustomerFaqListModel();
  final myDio = ref.read(myDioForAppNotifierProvider);
  await myDio?.post<CustomerFaqListModel>(ApiPath.me.getCustomerFaqList,
    onSuccess: (code, msg, results) async {
      data = results;
    },
    onConnectError: (e) async {
      // 多次请求失败
      // 抛出错误
      MyLogger.w('错误信息: $e');
      throw e;
    },
    data: {
      "typeId": typeId,
    },
    onModel: (m) => CustomerFaqListModel.fromJson({
      "list": m,
    }),
  );
  return data;
}