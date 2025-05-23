// 网易人机验证
// 这里需要传一个 onSuccess 回调
// 人机验证成功后需要走的逻辑可以传进来
import 'package:flutter/material.dart';
import '../common.dart';

Future<void> verificationHuman({
  required BuildContext context,
  void Function(String)? onSuccess,
  required Future<HumanVerificationModel> getCaptchaImage,
  required String language,
}) async {
  FocusScope.of(context).unfocus();
  HumanVerificationModel humanVerificationModel = HumanVerificationModel();

  showMyLoading();
  final model = await getCaptchaImage;
  // final model = await ref.read(humanVerificationNotifierProvider.future);
  hideMyLoading();

  humanVerificationModel = humanVerificationModel.copyWith(
    captchaId: model.captchaId,
    type: model.type,
  );

  if (humanVerificationModel.captchaId != null) {
    showMyBlock();
    showCaptcha(
      // language: ref.read(languageNotifierProvider).languageCode,
      language: language,
      captchaId: humanVerificationModel.captchaId ?? '',
      onSuccess: (value) async {
        if (value.isNotEmpty) {
          onSuccess?.call(value);
        }
      },
      onError: () {
        hideMyBlock();
      },
      onClose: () {
        hideMyBlock();
      }
    );
  }
}