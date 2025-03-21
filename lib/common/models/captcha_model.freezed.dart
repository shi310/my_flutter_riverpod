// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captcha_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CaptchaModel {
  String? get captchaId;
  String? get picPath;
  int? get captchaLength;
  bool? get openCaptcha;

  /// Create a copy of CaptchaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CaptchaModelCopyWith<CaptchaModel> get copyWith =>
      _$CaptchaModelCopyWithImpl<CaptchaModel>(
          this as CaptchaModel, _$identity);

  /// Serializes this CaptchaModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CaptchaModel &&
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
    return 'CaptchaModel(captchaId: $captchaId, picPath: $picPath, captchaLength: $captchaLength, openCaptcha: $openCaptcha)';
  }
}

/// @nodoc
abstract mixin class $CaptchaModelCopyWith<$Res> {
  factory $CaptchaModelCopyWith(
          CaptchaModel value, $Res Function(CaptchaModel) _then) =
      _$CaptchaModelCopyWithImpl;
  @useResult
  $Res call(
      {String? captchaId,
      String? picPath,
      int? captchaLength,
      bool? openCaptcha});
}

/// @nodoc
class _$CaptchaModelCopyWithImpl<$Res> implements $CaptchaModelCopyWith<$Res> {
  _$CaptchaModelCopyWithImpl(this._self, this._then);

  final CaptchaModel _self;
  final $Res Function(CaptchaModel) _then;

  /// Create a copy of CaptchaModel
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
class _CaptchaModel implements CaptchaModel {
  const _CaptchaModel(
      {this.captchaId, this.picPath, this.captchaLength, this.openCaptcha});
  factory _CaptchaModel.fromJson(Map<String, dynamic> json) =>
      _$CaptchaModelFromJson(json);

  @override
  final String? captchaId;
  @override
  final String? picPath;
  @override
  final int? captchaLength;
  @override
  final bool? openCaptcha;

  /// Create a copy of CaptchaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CaptchaModelCopyWith<_CaptchaModel> get copyWith =>
      __$CaptchaModelCopyWithImpl<_CaptchaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CaptchaModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CaptchaModel &&
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
    return 'CaptchaModel(captchaId: $captchaId, picPath: $picPath, captchaLength: $captchaLength, openCaptcha: $openCaptcha)';
  }
}

/// @nodoc
abstract mixin class _$CaptchaModelCopyWith<$Res>
    implements $CaptchaModelCopyWith<$Res> {
  factory _$CaptchaModelCopyWith(
          _CaptchaModel value, $Res Function(_CaptchaModel) _then) =
      __$CaptchaModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? captchaId,
      String? picPath,
      int? captchaLength,
      bool? openCaptcha});
}

/// @nodoc
class __$CaptchaModelCopyWithImpl<$Res>
    implements _$CaptchaModelCopyWith<$Res> {
  __$CaptchaModelCopyWithImpl(this._self, this._then);

  final _CaptchaModel _self;
  final $Res Function(_CaptchaModel) _then;

  /// Create a copy of CaptchaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? captchaId = freezed,
    Object? picPath = freezed,
    Object? captchaLength = freezed,
    Object? openCaptcha = freezed,
  }) {
    return _then(_CaptchaModel(
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

// dart format on
