// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captcha_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CaptchaModel _$CaptchaModelFromJson(Map<String, dynamic> json) =>
    _CaptchaModel(
      captchaId: json['captchaId'] as String?,
      picPath: json['picPath'] as String?,
      captchaLength: (json['captchaLength'] as num?)?.toInt(),
      openCaptcha: json['openCaptcha'] as bool?,
    );

Map<String, dynamic> _$CaptchaModelToJson(_CaptchaModel instance) =>
    <String, dynamic>{
      'captchaId': instance.captchaId,
      'picPath': instance.picPath,
      'captchaLength': instance.captchaLength,
      'openCaptcha': instance.openCaptcha,
    };
