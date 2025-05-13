// GENERATED CODE - DO NOT MODIFY BY HAND

part of '163.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CaptchaImageModel _$CaptchaImageModelFromJson(Map<String, dynamic> json) =>
    _CaptchaImageModel(
      captchaId: json['captchaId'] as String?,
      picPath: json['picPath'] as String?,
      captchaLength: (json['captchaLength'] as num?)?.toInt(),
      openCaptcha: json['openCaptcha'] as bool?,
    );

Map<String, dynamic> _$CaptchaImageModelToJson(_CaptchaImageModel instance) =>
    <String, dynamic>{
      'captchaId': instance.captchaId,
      'picPath': instance.picPath,
      'captchaLength': instance.captchaLength,
      'openCaptcha': instance.openCaptcha,
    };

_HumanVerificationModel _$HumanVerificationModelFromJson(
        Map<String, dynamic> json) =>
    _HumanVerificationModel(
      captchaId: json['captchaId'] as String?,
      type: (json['type'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HumanVerificationModelToJson(
        _HumanVerificationModel instance) =>
    <String, dynamic>{
      'captchaId': instance.captchaId,
      'type': instance.type,
    };
