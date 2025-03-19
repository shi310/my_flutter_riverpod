import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_basic/common/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'captcha.g.dart';

@riverpod
Future<CaptchaModel> captcha(Ref ref) async {
  CaptchaModel data = CaptchaModel.empty();
  await GlobalController.to.myDio?.get<CaptchaModel>(ApiPath.base.captcha,
    onSuccess: (code, msg, results) async {
      data = results;
    },
    onError: (e) async {
    },
    onModel: (m) => CaptchaModel.fromJson(m),
  );

  return data;
}