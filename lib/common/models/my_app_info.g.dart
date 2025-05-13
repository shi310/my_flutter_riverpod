// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_app_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyAppInfoModel _$MyAppInfoModelFromJson(Map<String, dynamic> json) =>
    _MyAppInfoModel(
      deviceInfo: json['deviceInfo'] == null
          ? null
          : MyDeviceInfoModel.fromJson(
              json['deviceInfo'] as Map<String, dynamic>),
      packageInfo: const _PackageInfoConverter()
          .fromJson(json['packageInfo'] as Map<String, dynamic>?),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$MyAppInfoModelToJson(_MyAppInfoModel instance) =>
    <String, dynamic>{
      'deviceInfo': instance.deviceInfo,
      'packageInfo': const _PackageInfoConverter().toJson(instance.packageInfo),
      'version': instance.version,
    };
