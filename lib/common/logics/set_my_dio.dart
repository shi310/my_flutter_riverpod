import 'package:dio/dio.dart';
import 'package:my_device_info/models/my_device_info_model.dart';
import 'package:my_device_info/my_device_info_method.dart';

import '../../global.dart';
import '../../public/public.dart';
import '../common.dart';


Future<void> setMyDio() async {
  final baseUrls = Global.to.providerContainer.read(baseUrlsNotifierProvider);

  if (baseUrls.isEmpty) {
    MyLogger.w('传入的链接组为空，无法配置Dio...');
    return;
  }

  final myDio = Global.to.providerContainer.read(myDioForAppNotifierProvider);

  if (myDio != null) {
    MyLogger.w('MyHttpClient 已经初始化...');
    return;
  }

  final info = await MyDeviceInfo.getDeviceInfo();

  Global.to.providerContainer.read(myDioForAppNotifierProvider.notifier).set(MyDio(
    urls: baseUrls,
    timeout: MyConfig.time.timeout,
    headers: _headers(info),
    onResponse: _onResponse,
    // onConnectError: onConnectError,
    codes: [0],
  ));
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
  final userInfo = Global.to.providerContainer.read(userInfoNotifierProvider);
  return {
    'x-token': '${userInfo.token}',
    'x-device': device,
    'x-timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
  };
}
