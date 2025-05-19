import 'package:dio/dio.dart';
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
    timeout: MyConfig.time.timeout,
    headers: _headers(info),
    onResponse: _onResponse,
    // onConnectError: onConnectError,
    codes: [0],
  );
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
