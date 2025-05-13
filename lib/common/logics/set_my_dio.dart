import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_device_info/models/my_device_info_model.dart';
import 'package:my_device_info/my_device_info_method.dart';

import '../../global.dart';
import '../../public/public.dart';
import '../common.dart';


Future<void> setMyDio({
  Future<dynamic> Function()? onSuccess,
  bool isShowMyDialog = true,
}) async {
  if (Global.to.baseUrlList.isEmpty) {
    MyLogger.w('传入的链接组为空，无法配置Dio...');
    return;
  }

  if (Global.to.myDio != null) {
    MyLogger.w('MyHttpClient 已经初始化...');
    return;
  }

  final info = await MyDeviceInfo.getDeviceInfo();

  Global.to.myDio = MyDio(
    urls: Global.to.baseUrlList,
    timeout: MyConfig.time.out,
    headers: _headers(info),
    onResponse: _onResponse,
    // onConnectError: onConnectError,
    codes: [0],
  );
}

Future<void> onConnectError(DioException error) async {
  final context = MyPages.globalNavigatorKey.currentContext;
  if (context != null) {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text('MyLanguage.apiErrorTitle.tr'),
        content: Text('MyLanguage.apiErrorContent.tr'),
        actions: [
          TextButton(
            child: Text('sure'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    });
  }

  // routerRefreshNotifier.refresh();
  // closeDialog();
  //
  // await showMyDialog(
  //   title: Text(MyLanguage.apiErrorTitle.tr, style: TextStyle(
  //     fontSize: MyFontSize.titleSmall.value,
  //     fontWeight: FontWeight.w600,
  //   )),
  //   content: Text(MyLanguage.apiErrorContent.tr, style: TextStyle(
  //     fontSize: MyFontSize.body.value,
  //   )),
  //   confirmText: MyLanguage.retry.tr,
  //   cancelText: MyLanguage.cancel.tr,
  //   onCancel: () {},
  //   onConfirm: () async {
  //     // 页面重载逻辑
  //     // 基本思路：
  //     // 1、获取当前路由和参数，参数不变
  //     // 2、需要配置 preventDuplicates: false，意思是相同的路由也会进行重复跳转
  //     // 3、Get.offNamed 跳转，销毁上一个路由，确保不会出现重复
  //     await Future.delayed(MyConfig.time.pageTransition);
  //     final route = Get.currentRoute;
  //     final arguments = Get.arguments;
  //     MyLogger.w('重新加载页面 --> $route');
  //     Get.offNamed(route, arguments: arguments, preventDuplicates: false);
  //   }
  // );
}

Future<void> _onResponse(Response<dynamic> response) async {
  if (response.data.runtimeType == Map<String, dynamic>) {
    final responseModel = ResponseModel.fromJson(response.data);
    if ([4].contains(responseModel.code)) {

    } else if ([2].contains(responseModel.code)) {

    }
  }
}

Map<String, String> _headers(MyDeviceInfoModel info) {
  String device = '${info.brand}, ${info.id}, ${info.model}, ${info.systemVersion}';
  return {
    'x-token': '${Global.to.userInfo.token}',
    'x-device': device,
    'x-timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
  };
}
