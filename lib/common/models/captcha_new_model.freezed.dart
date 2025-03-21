// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captcha_new_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CaptchaNewModel {
  String? get captchaId;
  String? get picPath;
  int? get captchaLength;
  bool? get openCaptcha;

  /// Create a copy of CaptchaNewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CaptchaNewModelCopyWith<CaptchaNewModel> get copyWith =>
      _$CaptchaNewModelCopyWithImpl<CaptchaNewModel>(
          this as CaptchaNewModel, _$identity);

  /// Serializes this CaptchaNewModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CaptchaNewModel &&
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
    return 'CaptchaNewModel(captchaId: $captchaId, picPath: $picPath, captchaLength: $captchaLength, openCaptcha: $openCaptcha)';
  }
}

/// @nodoc
abstract mixin class $CaptchaNewModelCopyWith<$Res> {
  factory $CaptchaNewModelCopyWith(
          CaptchaNewModel value, $Res Function(CaptchaNewModel) _then) =
      _$CaptchaNewModelCopyWithImpl;
  @useResult
  $Res call(
      {String? captchaId,
      String? picPath,
      int? captchaLength,
      bool? openCaptcha});
}

/// @nodoc
class _$CaptchaNewModelCopyWithImpl<$Res>
    implements $CaptchaNewModelCopyWith<$Res> {
  _$CaptchaNewModelCopyWithImpl(this._self, this._then);

  final CaptchaNewModel _self;
  final $Res Function(CaptchaNewModel) _then;

  /// Create a copy of CaptchaNewModel
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
class _CaptchaNewModel implements CaptchaNewModel {
  const _CaptchaNewModel(
      {this.captchaId, this.picPath, this.captchaLength, this.openCaptcha});
  factory _CaptchaNewModel.fromJson(Map<String, dynamic> json) =>
      _$CaptchaNewModelFromJson(json);

  @override
  final String? captchaId;
  @override
  final String? picPath;
  @override
  final int? captchaLength;
  @override
  final bool? openCaptcha;

  /// Create a copy of CaptchaNewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CaptchaNewModelCopyWith<_CaptchaNewModel> get copyWith =>
      __$CaptchaNewModelCopyWithImpl<_CaptchaNewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CaptchaNewModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CaptchaNewModel &&
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
    return 'CaptchaNewModel(captchaId: $captchaId, picPath: $picPath, captchaLength: $captchaLength, openCaptcha: $openCaptcha)';
  }
}

/// @nodoc
abstract mixin class _$CaptchaNewModelCopyWith<$Res>
    implements $CaptchaNewModelCopyWith<$Res> {
  factory _$CaptchaNewModelCopyWith(
          _CaptchaNewModel value, $Res Function(_CaptchaNewModel) _then) =
      __$CaptchaNewModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? captchaId,
      String? picPath,
      int? captchaLength,
      bool? openCaptcha});
}

/// @nodoc
class __$CaptchaNewModelCopyWithImpl<$Res>
    implements _$CaptchaNewModelCopyWith<$Res> {
  __$CaptchaNewModelCopyWithImpl(this._self, this._then);

  final _CaptchaNewModel _self;
  final $Res Function(_CaptchaNewModel) _then;

  /// Create a copy of CaptchaNewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? captchaId = freezed,
    Object? picPath = freezed,
    Object? captchaLength = freezed,
    Object? openCaptcha = freezed,
  }) {
    return _then(_CaptchaNewModel(
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
