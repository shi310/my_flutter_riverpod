import 'package:freezed_annotation/freezed_annotation.dart';

part 'captcha_new_model.freezed.dart';
part 'captcha_new_model.g.dart';

@freezed
abstract class CaptchaNewModel with _$CaptchaNewModel {
  const factory CaptchaNewModel({
    String? captchaId,
    String? picPath,
    int? captchaLength,
    bool? openCaptcha,
  }) = _CaptchaNewModel;

  factory CaptchaNewModel.fromJson(Map<String, dynamic> json) => _$CaptchaNewModelFromJson(json);
}
