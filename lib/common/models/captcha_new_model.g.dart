// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captcha_new_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CaptchaNewModel _$CaptchaNewModelFromJson(Map<String, dynamic> json) =>
    _CaptchaNewModel(
      captchaId: json['captchaId'] as String?,
      picPath: json['picPath'] as String?,
      captchaLength: (json['captchaLength'] as num?)?.toInt(),
      openCaptcha: json['openCaptcha'] as bool?,
    );

Map<String, dynamic> _$CaptchaNewModelToJson(_CaptchaNewModel instance) =>
    <String, dynamic>{
      'captchaId': instance.captchaId,
      'picPath': instance.picPath,
      'captchaLength': instance.captchaLength,
      'openCaptcha': instance.openCaptcha,
    };
