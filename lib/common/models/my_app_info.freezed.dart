// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_app_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyAppInfoModel {
  MyDeviceInfoModel? get deviceInfo;
  @_PackageInfoConverter()
  PackageInfo? get packageInfo;
  String? get version;

  /// Create a copy of MyAppInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyAppInfoModelCopyWith<MyAppInfoModel> get copyWith =>
      _$MyAppInfoModelCopyWithImpl<MyAppInfoModel>(
          this as MyAppInfoModel, _$identity);

  /// Serializes this MyAppInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyAppInfoModel &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.packageInfo, packageInfo) ||
                other.packageInfo == packageInfo) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceInfo, packageInfo, version);

  @override
  String toString() {
    return 'MyAppInfoModel(deviceInfo: $deviceInfo, packageInfo: $packageInfo, version: $version)';
  }
}

/// @nodoc
abstract mixin class $MyAppInfoModelCopyWith<$Res> {
  factory $MyAppInfoModelCopyWith(
          MyAppInfoModel value, $Res Function(MyAppInfoModel) _then) =
      _$MyAppInfoModelCopyWithImpl;
  @useResult
  $Res call(
      {MyDeviceInfoModel? deviceInfo,
      @_PackageInfoConverter() PackageInfo? packageInfo,
      String? version});
}

/// @nodoc
class _$MyAppInfoModelCopyWithImpl<$Res>
    implements $MyAppInfoModelCopyWith<$Res> {
  _$MyAppInfoModelCopyWithImpl(this._self, this._then);

  final MyAppInfoModel _self;
  final $Res Function(MyAppInfoModel) _then;

  /// Create a copy of MyAppInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = freezed,
    Object? packageInfo = freezed,
    Object? version = freezed,
  }) {
    return _then(_self.copyWith(
      deviceInfo: freezed == deviceInfo
          ? _self.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as MyDeviceInfoModel?,
      packageInfo: freezed == packageInfo
          ? _self.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MyAppInfoModel implements MyAppInfoModel {
  const _MyAppInfoModel(
      {this.deviceInfo,
      @_PackageInfoConverter() this.packageInfo,
      this.version});
  factory _MyAppInfoModel.fromJson(Map<String, dynamic> json) =>
      _$MyAppInfoModelFromJson(json);

  @override
  final MyDeviceInfoModel? deviceInfo;
  @override
  @_PackageInfoConverter()
  final PackageInfo? packageInfo;
  @override
  final String? version;

  /// Create a copy of MyAppInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyAppInfoModelCopyWith<_MyAppInfoModel> get copyWith =>
      __$MyAppInfoModelCopyWithImpl<_MyAppInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyAppInfoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyAppInfoModel &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.packageInfo, packageInfo) ||
                other.packageInfo == packageInfo) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceInfo, packageInfo, version);

  @override
  String toString() {
    return 'MyAppInfoModel(deviceInfo: $deviceInfo, packageInfo: $packageInfo, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$MyAppInfoModelCopyWith<$Res>
    implements $MyAppInfoModelCopyWith<$Res> {
  factory _$MyAppInfoModelCopyWith(
          _MyAppInfoModel value, $Res Function(_MyAppInfoModel) _then) =
      __$MyAppInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {MyDeviceInfoModel? deviceInfo,
      @_PackageInfoConverter() PackageInfo? packageInfo,
      String? version});
}

/// @nodoc
class __$MyAppInfoModelCopyWithImpl<$Res>
    implements _$MyAppInfoModelCopyWith<$Res> {
  __$MyAppInfoModelCopyWithImpl(this._self, this._then);

  final _MyAppInfoModel _self;
  final $Res Function(_MyAppInfoModel) _then;

  /// Create a copy of MyAppInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deviceInfo = freezed,
    Object? packageInfo = freezed,
    Object? version = freezed,
  }) {
    return _then(_MyAppInfoModel(
      deviceInfo: freezed == deviceInfo
          ? _self.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as MyDeviceInfoModel?,
      packageInfo: freezed == packageInfo
          ? _self.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
