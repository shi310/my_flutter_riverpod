import 'package:freezed_annotation/freezed_annotation.dart';

part 'w_163.freezed.dart';
part 'w_163.g.dart';

// 网易图形验证码
@freezed
abstract class CaptchaImageModel with _$CaptchaImageModel {
  const factory CaptchaImageModel({
    String? captchaId,
    String? picPath,
    int? captchaLength,
    bool? openCaptcha,
  }) = _CaptchaImageModel;

  factory CaptchaImageModel.fromJson(Map<String, dynamic> json) => _$CaptchaImageModelFromJson(json);
}

// 网易人机验证
@freezed
abstract class HumanVerificationModel with _$HumanVerificationModel {
  const factory HumanVerificationModel({
    String? captchaId,
    int? type,
  }) = _HumanVerificationModel;

  factory HumanVerificationModel.fromJson(Map<String, dynamic> json) => _$HumanVerificationModelFromJson(json);
}