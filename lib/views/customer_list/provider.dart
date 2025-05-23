import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common/common.dart';
import '../../public/public.dart';

part 'provider.g.dart';

// 客服列表
// 缓存：10 分钟
@riverpod
Future<CustomerModel> customerListNotifier(Ref ref, {
  required CustomerListViewArguments arguments,
}) async {
  myProviderKeepAlive(ref, debugKey: "customerList");

  final typeName = arguments.customerType == CustomerType.guest ? [4] : [2, 3];

  CustomerModel data = CustomerModel();
  final myDio = ref.read(myDioForAppNotifierProvider);
  await myDio?.post<CustomerModel>(ApiPath.me.getCustomer,
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
      "typeName": typeName,
    },
    onModel: (m) => CustomerModel.fromJson(m),
  );
  return data;
}

// 客服FAQ类型列表
// 缓存：10 分钟
@riverpod
Future<CustomerFaqTypeListModel> customerFaqTypeListNotifier(Ref ref) async {
  myProviderKeepAlive(ref, debugKey: "customerFaqTypeList");

  CustomerFaqTypeListModel data = CustomerFaqTypeListModel();
  final myDio = ref.read(myDioForAppNotifierProvider);
  await myDio?.get<CustomerFaqTypeListModel>(ApiPath.me.getCustomerFaqType,
    onSuccess: (code, msg, results) async {
      data = results;
    },
    onConnectError: (e) async {
      // 多次请求失败
      // 抛出错误
      MyLogger.w('错误信息: $e');
      throw e;
    },
    onModel: (m) => CustomerFaqTypeListModel.fromJson({
      "list": m,
    }),
  );
  return data;
}

@riverpod
Future<CombinedCustomerDataModel> customerDataCombined(Ref ref, {
  required CustomerListViewArguments arguments,
}) async {
  final customerList = await ref.watch(
    customerListNotifierProvider(arguments: arguments).future,
  );

  final faqTypeList = await ref.watch(
    customerFaqTypeListNotifierProvider.future,
  );

  return CombinedCustomerDataModel(
    customer: customerList,
    faqTypeList: faqTypeList,
  );
}