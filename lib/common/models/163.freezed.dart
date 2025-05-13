// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '163.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CaptchaImageModel {
  String? get captchaId;
  String? get picPath;
  int? get captchaLength;
  bool? get openCaptcha;

  /// Create a copy of CaptchaImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CaptchaImageModelCopyWith<CaptchaImageModel> get copyWith =>
      _$CaptchaImageModelCopyWithImpl<CaptchaImageModel>(
          this as CaptchaImageModel, _$identity);

  /// Serializes this CaptchaImageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CaptchaImageModel &&
            (identical(other.captchaId, captchaId) ||
                other.captchaId == captchaId) &&
            (identical(other.picPath, picPath) || other.picPath == picPath) &&
            (identical(other.captchaLength, captchaLength) ||
                other.captchaLength == captchaLength) &&
            (identical(other.openCaptcha, openCaptcha) ||
                other.openCaptcha == openCaptcha));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, captchaId, picPath, captchaLength, openCaptcha);

  @override
  String toString() {
    return 'CaptchaImageModel(captchaId: $captchaId, picPath: $picPath, captchaLength: $captchaLength, openCaptcha: $openCaptcha)';
  }
}

/// @nodoc
abstract mixin class $CaptchaImageModelCopyWith<$Res> {
  factory $CaptchaImageModelCopyWith(
          CaptchaImageModel value, $Res Function(CaptchaImageModel) _then) =
      _$CaptchaImageModelCopyWithImpl;
  @useResult
  $Res call(
      {String? captchaId,
      String? picPath,
      int? captchaLength,
      bool? openCaptcha});
}

/// @nodoc
class _$CaptchaImageModelCopyWithImpl<$Res>
    implements $CaptchaImageModelCopyWith<$Res> {
  _$CaptchaImageModelCopyWithImpl(this._self, this._then);

  final CaptchaImageModel _self;
  final $Res Function(CaptchaImageModel) _then;

  /// Create a copy of CaptchaImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? captchaId = freezed,
    Object? picPath = freezed,
    Object? captchaLength = freezed,
    Object? openCaptcha = freezed,
  }) {
    return _then(_self.copyWith(
      captchaId: freezed == captchaId
          ? _self.captchaId
          : captchaId // ignore: cast_nullable_to_non_nullable
              as String?,
      picPath: freezed == picPath
          ? _self.picPath
          : picPath // ignore: cast_nullable_to_non_nullable
              as String?,
      captchaLength: freezed == captchaLength
          ? _self.captchaLength
          : captchaLength // ignore: cast_nullable_to_non_nullable
              as int?,
      openCaptcha: freezed == openCaptcha
          ? _self.openCaptcha
          : openCaptcha // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CaptchaImageModel implements CaptchaImageModel {
  const _CaptchaImageModel(
      {this.captchaId, this.picPath, this.captchaLength, this.openCaptcha});
  factory _CaptchaImageModel.fromJson(Map<String, dynamic> json) =>
      _$CaptchaImageModelFromJson(json);

  @override
  final String? captchaId;
  @override
  final String? picPath;
  @override
  final int? captchaLength;
  @override
  final bool? openCaptcha;

  /// Create a copy of CaptchaImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CaptchaImageModelCopyWith<_CaptchaImageModel> get copyWith =>
      __$CaptchaImageModelCopyWithImpl<_CaptchaImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CaptchaImageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CaptchaImageModel &&
            (identical(other.captchaId, captchaId) ||
                other.captchaId == captchaId) &&
            (identical(other.picPath, picPath) || other.picPath == picPath) &&
            (identical(other.captchaLength, captchaLength) ||
                other.captchaLength == captchaLength) &&
            (identical(other.openCaptcha, openCaptcha) ||
                other.openCaptcha == openCaptcha));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, captchaId, picPath, captchaLength, openCaptcha);

  @override
  String toString() {
    return 'CaptchaImageModel(captchaId: $captchaId, picPath: $picPath, captchaLength: $captchaLength, openCaptcha: $openCaptcha)';
  }
}

/// @nodoc
abstract mixin class _$CaptchaImageModelCopyWith<$Res>
    implements $CaptchaImageModelCopyWith<$Res> {
  factory _$CaptchaImageModelCopyWith(
          _CaptchaImageModel value, $Res Function(_CaptchaImageModel) _then) =
      __$CaptchaImageModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? captchaId,
      String? picPath,
      int? captchaLength,
      bool? openCaptcha});
}

/// @nodoc
class __$CaptchaImageModelCopyWithImpl<$Res>
    implements _$CaptchaImageModelCopyWith<$Res> {
  __$CaptchaImageModelCopyWithImpl(this._self, this._then);

  final _CaptchaImageModel _self;
  final $Res Function(_CaptchaImageModel) _then;

  /// Create a copy of CaptchaImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? captchaId = freezed,
    Object? picPath = freezed,
    Object? captchaLength = freezed,
    Object? openCaptcha = freezed,
  }) {
    return _then(_CaptchaImageModel(
      captchaId: freezed == captchaId
          ? _self.captchaId
          : captchaId // ignore: cast_nullable_to_non_nullable
              as String?,
      picPath: freezed == picPath
          ? _self.picPath
          : picPath // ignore: cast_nullable_to_non_nullable
              as String?,
      captchaLength: freezed == captchaLength
          ? _self.captchaLength
          : captchaLength // ignore: cast_nullable_to_non_nullable
              as int?,
      openCaptcha: freezed == openCaptcha
          ? _self.openCaptcha
          : openCaptcha // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$HumanVerificationModel {
  String? get captchaId;
  int? get type;

  /// Create a copy of HumanVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HumanVerificationModelCopyWith<HumanVerificationModel> get copyWith =>
      _$HumanVerificationModelCopyWithImpl<HumanVerificationModel>(
          this as HumanVerificationModel, _$identity);

  /// Serializes this HumanVerificationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HumanVerificationModel &&
            (identical(other.captchaId, captchaId) ||
                other.captchaId == captchaId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, captchaId, type);

  @override
  String toString() {
    return 'HumanVerificationModel(captchaId: $captchaId, type: $type)';
  }
}

/// @nodoc
abstract mixin class $HumanVerificationModelCopyWith<$Res> {
  factory $HumanVerificationModelCopyWith(HumanVerificationModel value,
          $Res Function(HumanVerificationModel) _then) =
      _$HumanVerificationModelCopyWithImpl;
  @useResult
  $Res call({String? captchaId, int? type});
}

/// @nodoc
class _$HumanVerificationModelCopyWithImpl<$Res>
    implements $HumanVerificationModelCopyWith<$Res> {
  _$HumanVerificationModelCopyWithImpl(this._self, this._then);

  final HumanVerificationModel _self;
  final $Res Function(HumanVerificationModel) _then;

  /// Create a copy of HumanVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? captchaId = freezed,
    Object? type = freezed,
  }) {
    return _then(_self.copyWith(
      captchaId: freezed == captchaId
          ? _self.captchaId
          : captchaId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _HumanVerificationModel implements HumanVerificationModel {
  const _HumanVerificationModel({this.captchaId, this.type});
  factory _HumanVerificationModel.fromJson(Map<String, dynamic> json) =>
      _$HumanVerificationModelFromJson(json);

  @override
  final String? captchaId;
  @override
  final int? type;

  /// Create a copy of HumanVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HumanVerificationModelCopyWith<_HumanVerificationModel> get copyWith =>
      __$HumanVerificationModelCopyWithImpl<_HumanVerificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HumanVerificationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HumanVerificationModel &&
            (identical(other.captchaId, captchaId) ||
                other.captchaId == captchaId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, captchaId, type);

  @override
  String toString() {
    return 'HumanVerificationModel(captchaId: $captchaId, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$HumanVerificationModelCopyWith<$Res>
    implements $HumanVerificationModelCopyWith<$Res> {
  factory _$HumanVerificationModelCopyWith(_HumanVerificationModel value,
          $Res Function(_HumanVerificationModel) _then) =
      __$HumanVerificationModelCopyWithImpl;
  @override
  @useResult
  $Res call({String? captchaId, int? type});
}

/// @nodoc
class __$HumanVerificationModelCopyWithImpl<$Res>
    implements _$HumanVerificationModelCopyWith<$Res> {
  __$HumanVerificationModelCopyWithImpl(this._self, this._then);

  final _HumanVerificationModel _self;
  final $Res Function(_HumanVerificationModel) _then;

  /// Create a copy of HumanVerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? captchaId = freezed,
    Object? type = freezed,
  }) {
    return _then(_HumanVerificationModel(
      captchaId: freezed == captchaId
          ? _self.captchaId
          : captchaId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
