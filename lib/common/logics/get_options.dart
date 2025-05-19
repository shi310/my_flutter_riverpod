import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';

import '../../global.dart';
import '../../public/public.dart';
import '../common.dart';

Future<void> getOptions({
  required List<String> urls,
  Future<dynamic> Function()? onSuccess,
  Future<dynamic> Function()? onError,
}) async {
  if (Global.to.wssUrlList.isNotEmpty && Global.to.baseUrlList.isNotEmpty) {
    MyLogger.w('配置已获取请勿重复操作...');
    await onSuccess?.call();
    return;
  }

  final client = HttpClient();
  final completer = Completer<String>();
  final tasks = <Future>[];

  for (var url in urls) {
    tasks.add(Future(() async {
      try {
        final uri = Uri.parse(url);
        final request = await client.getUrl(uri).timeout(MyConfig.time.timeout);
        final response = await request.close();

        if (response.statusCode >= 200 && response.statusCode < 300) {
          final responseData = await response.transform(utf8.decoder).join();
          if (!completer.isCompleted) {
            completer.complete(responseData);
          }
        } else {
          MyLogger.w('获取配置发生了错误 --> HTTP 状态码: ${response.statusCode}');
        }
      } catch (e) {
        MyLogger.w('获取配置发生了错误 --> $e');
      }
    }));
  }

  String data = '';

  try {
    data = await completer.future.timeout(MyConfig.time.timeout);
  } catch (e) {
    MyLogger.w('获取配置超时或发生其他错误 --> $e');
  }

  client.close();

  if (data.isNotEmpty) {
    data = data.aesDecrypt(MyConfig.key.aesKey);
    final json = jsonDecode(data);

    MyLogger.l();

    final List<dynamic> baseUrls = json['api'];
    Global.to.baseUrlList.clear();
    for (var element in baseUrls) {
      Global.to.baseUrlList.add(element.toString());
    }

    MyLogger.w('获取到 API 地址 --> ${Global.to.baseUrlList}');

    final List<dynamic> wss = json['ws'];
    Global.to.wssUrlList.clear();
    for (var element in wss) {
      Global.to.wssUrlList.add(element.toString());
    }

    MyLogger.w('获取到 WSS 地址 --> ${Global.to.wssUrlList}');
    MyLogger.l();

    await onSuccess?.call();
  } else {
    showMyDialog(
      isDismissible: false,
      title: (context) {
        return Text('连接失败', style: TextStyle(
          fontSize: MyFontSize.titleSmall.value,
          fontWeight: FontWeight.w600,
        ));
      },
      content: (context) {
        return Text('请点击重新按钮重新尝试', style: TextStyle(
          fontSize: MyFontSize.body.value,
        ));
      },
      onConfirm: (context) async {
        showMyLoading();
        await onError?.call();
        await getOptions(
          urls: urls,
          onError: onError,
          onSuccess: onSuccess,
        );
        hideMyLoading();
      }
    );
  }
}