import 'package:freezed_annotation/freezed_annotation.dart';

part 'captcha_model.freezed.dart';
part 'captcha_model.g.dart';

@freezed
abstract class CaptchaModel with _$CaptchaModel {
  const factory CaptchaModel({
    String? captchaId,
    String? picPath,
    int? captchaLength,
    bool? openCaptcha,
  }) = _CaptchaModel;

  factory CaptchaModel.fromJson(Map<String, dynamic> json) => _$CaptchaModelFromJson(json);
}