import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_device_info/models/models.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'my_app_info.freezed.dart';
part 'my_app_info.g.dart';

@freezed
abstract class MyAppInfoModel with _$MyAppInfoModel {
  const factory MyAppInfoModel({
    MyDeviceInfoModel? deviceInfo,

    @_PackageInfoConverter()
    PackageInfo? packageInfo,

    String? version,
  }) = _MyAppInfoModel;

  factory MyAppInfoModel.fromJson(Map<String, dynamic> json) => _$MyAppInfoModelFromJson(json);
}

class _PackageInfoConverter implements JsonConverter<PackageInfo?, Map<String, dynamic>?> {
  const _PackageInfoConverter();

  @override
  PackageInfo fromJson(Map<String, dynamic>? json) => PackageInfo(
    appName: json?["appName"] ?? '',
    packageName: json?["packageName"] ?? '',
    version: json?["version"] ?? '',
    buildNumber: json?["buildNumber"] ?? '',
    buildSignature: json?["buildSignature"] ?? '',
    installerStore: json?["installerStore"],
    installTime: json?["installTime"],
    updateTime: json?["updateTime"],
  );

  @override
  Map<String, dynamic>? toJson(PackageInfo? p) => {
    "appName": p?.appName,
    "packageName": p?.packageName,
    "version": p?.version,
    "buildNumber": p?.buildNumber,
    "buildSignature": p?.buildSignature,
    "installerStore": p?.installerStore,
    "installTime": p?.installTime,
    "updateTime": p?.updateTime,
  };
}