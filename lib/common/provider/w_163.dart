import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../global.dart';
import '../../public/public.dart';
import '../common.dart';

part 'w_163.g.dart';

// 这种写法是只读的
// 无法进行修改，适合固定的数据
// 适合从接口拿到数据后直接展示

// 图形验证码
@riverpod
Future<CaptchaImageModel> captchaImageNotifier(Ref ref) async {
  CaptchaImageModel data = CaptchaImageModel();
  await Global.to.myDio?.get<CaptchaImageModel>(ApiPath.base.captcha,
    onSuccess: (code, msg, results) async {
      data = results;
    },
    onError: (e) async {
    },
    onModel: (m) => CaptchaImageModel.fromJson(m),
  );
  return data;
}

// 网易人机验证信息
// 缓存：10 分钟
@Riverpod()
Future<HumanVerificationModel> humanVerificationNotifier(Ref ref) async {
  myProviderKeepAlive(ref, debugKey: "humanVerification");

  // 获取数据
  HumanVerificationModel data = HumanVerificationModel();
  await Global.to.myDio?.get<HumanVerificationModel>(
    ApiPath.base.getCaptchaKey,
    onSuccess: (code, msg, results) async {
      data = results;
    },
    onError: (e) async {},
    onModel: (m) => HumanVerificationModel.fromJson(m),
  );

  return data;
}