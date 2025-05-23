// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qichat_assign_worker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QiChatAssignWorkerModel {
  String? get nick;
  String? get avatar;
  int? get workerId;
  String? get nimid;
  String? get tips;
  String? get chatId;

  /// Create a copy of QiChatAssignWorkerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QiChatAssignWorkerModelCopyWith<QiChatAssignWorkerModel> get copyWith =>
      _$QiChatAssignWorkerModelCopyWithImpl<QiChatAssignWorkerModel>(
          this as QiChatAssignWorkerModel, _$identity);

  /// Serializes this QiChatAssignWorkerModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QiChatAssignWorkerModel &&
            (identical(other.nick, nick) || other.nick == nick) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.workerId, workerId) ||
                other.workerId == workerId) &&
            (identical(other.nimid, nimid) || other.nimid == nimid) &&
            (identical(other.tips, tips) || other.tips == tips) &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nick, avatar, workerId, nimid, tips, chatId);

  @override
  String toString() {
    return 'QiChatAssignWorkerModel(nick: $nick, avatar: $avatar, workerId: $workerId, nimid: $nimid, tips: $tips, chatId: $chatId)';
  }
}

/// @nodoc
abstract mixin class $QiChatAssignWorkerModelCopyWith<$Res> {
  factory $QiChatAssignWorkerModelCopyWith(QiChatAssignWorkerModel value,
          $Res Function(QiChatAssignWorkerModel) _then) =
      _$QiChatAssignWorkerModelCopyWithImpl;
  @useResult
  $Res call(
      {String? nick,
      String? avatar,
      int? workerId,
      String? nimid,
      String? tips,
      String? chatId});
}

/// @nodoc
class _$QiChatAssignWorkerModelCopyWithImpl<$Res>
    implements $QiChatAssignWorkerModelCopyWith<$Res> {
  _$QiChatAssignWorkerModelCopyWithImpl(this._self, this._then);

  final QiChatAssignWorkerModel _self;
  final $Res Function(QiChatAssignWorkerModel) _then;

  /// Create a copy of QiChatAssignWorkerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nick = freezed,
    Object? avatar = freezed,
    Object? workerId = freezed,
    Object? nimid = freezed,
    Object? tips = freezed,
    Object? chatId = freezed,
  }) {
    return _then(_self.copyWith(
      nick: freezed == nick
          ? _self.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      workerId: freezed == workerId
          ? _self.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as int?,
      nimid: freezed == nimid
          ? _self.nimid
          : nimid // ignore: cast_nullable_to_non_nullable
              as String?,
      tips: freezed == tips
          ? _self.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _QiChatAssignWorkerModel implements QiChatAssignWorkerModel {
  const _QiChatAssignWorkerModel(
      {this.nick,
      this.avatar,
      this.workerId,
      this.nimid,
      this.tips,
      this.chatId});
  factory _QiChatAssignWorkerModel.fromJson(Map<String, dynamic> json) =>
      _$QiChatAssignWorkerModelFromJson(json);

  @override
  final String? nick;
  @override
  final String? avatar;
  @override
  final int? workerId;
  @override
  final String? nimid;
  @override
  final String? tips;
  @override
  final String? chatId;

  /// Create a copy of QiChatAssignWorkerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QiChatAssignWorkerModelCopyWith<_QiChatAssignWorkerModel> get copyWith =>
      __$QiChatAssignWorkerModelCopyWithImpl<_QiChatAssignWorkerModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QiChatAssignWorkerModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QiChatAssignWorkerModel &&
            (identical(other.nick, nick) || other.nick == nick) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.workerId, workerId) ||
                other.workerId == workerId) &&
            (identical(other.nimid, nimid) || other.nimid == nimid) &&
            (identical(other.tips, tips) || other.tips == tips) &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nick, avatar, workerId, nimid, tips, chatId);

  @override
  String toString() {
    return 'QiChatAssignWorkerModel(nick: $nick, avatar: $avatar, workerId: $workerId, nimid: $nimid, tips: $tips, chatId: $chatId)';
  }
}

/// @nodoc
abstract mixin class _$QiChatAssignWorkerModelCopyWith<$Res>
    implements $QiChatAssignWorkerModelCopyWith<$Res> {
  factory _$QiChatAssignWorkerModelCopyWith(_QiChatAssignWorkerModel value,
          $Res Function(_QiChatAssignWorkerModel) _then) =
      __$QiChatAssignWorkerModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? nick,
      String? avatar,
      int? workerId,
      String? nimid,
      String? tips,
      String? chatId});
}

/// @nodoc
class __$QiChatAssignWorkerModelCopyWithImpl<$Res>
    implements _$QiChatAssignWorkerModelCopyWith<$Res> {
  __$QiChatAssignWorkerModelCopyWithImpl(this._self, this._then);

  final _QiChatAssignWorkerModel _self;
  final $Res Function(_QiChatAssignWorkerModel) _then;

  /// Create a copy of QiChatAssignWorkerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nick = freezed,
    Object? avatar = freezed,
    Object? workerId = freezed,
    Object? nimid = freezed,
    Object? tips = freezed,
    Object? chatId = freezed,
  }) {
    return _then(_QiChatAssignWorkerModel(
      nick: freezed == nick
          ? _self.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      workerId: freezed == workerId
          ? _self.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as int?,
      nimid: freezed == nimid
          ? _self.nimid
          : nimid // ignore: cast_nullable_to_non_nullable
              as String?,
      tips: freezed == tips
          ? _self.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
