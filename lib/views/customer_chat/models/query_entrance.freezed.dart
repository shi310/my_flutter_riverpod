// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_entrance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QueryEntranceModel {
  String? get name;
  String? get nick;
  String? get avatar;
  String? get guide;
  int? get defaultConsultId;
  String? get changeDefaultTime;
  List<Consult>? get consults;

  /// Create a copy of QueryEntranceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QueryEntranceModelCopyWith<QueryEntranceModel> get copyWith =>
      _$QueryEntranceModelCopyWithImpl<QueryEntranceModel>(
          this as QueryEntranceModel, _$identity);

  /// Serializes this QueryEntranceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueryEntranceModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nick, nick) || other.nick == nick) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.guide, guide) || other.guide == guide) &&
            (identical(other.defaultConsultId, defaultConsultId) ||
                other.defaultConsultId == defaultConsultId) &&
            (identical(other.changeDefaultTime, changeDefaultTime) ||
                other.changeDefaultTime == changeDefaultTime) &&
            const DeepCollectionEquality().equals(other.consults, consults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      nick,
      avatar,
      guide,
      defaultConsultId,
      changeDefaultTime,
      const DeepCollectionEquality().hash(consults));

  @override
  String toString() {
    return 'QueryEntranceModel(name: $name, nick: $nick, avatar: $avatar, guide: $guide, defaultConsultId: $defaultConsultId, changeDefaultTime: $changeDefaultTime, consults: $consults)';
  }
}

/// @nodoc
abstract mixin class $QueryEntranceModelCopyWith<$Res> {
  factory $QueryEntranceModelCopyWith(
          QueryEntranceModel value, $Res Function(QueryEntranceModel) _then) =
      _$QueryEntranceModelCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? nick,
      String? avatar,
      String? guide,
      int? defaultConsultId,
      String? changeDefaultTime,
      List<Consult>? consults});
}

/// @nodoc
class _$QueryEntranceModelCopyWithImpl<$Res>
    implements $QueryEntranceModelCopyWith<$Res> {
  _$QueryEntranceModelCopyWithImpl(this._self, this._then);

  final QueryEntranceModel _self;
  final $Res Function(QueryEntranceModel) _then;

  /// Create a copy of QueryEntranceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? nick = freezed,
    Object? avatar = freezed,
    Object? guide = freezed,
    Object? defaultConsultId = freezed,
    Object? changeDefaultTime = freezed,
    Object? consults = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nick: freezed == nick
          ? _self.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      guide: freezed == guide
          ? _self.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultConsultId: freezed == defaultConsultId
          ? _self.defaultConsultId
          : defaultConsultId // ignore: cast_nullable_to_non_nullable
              as int?,
      changeDefaultTime: freezed == changeDefaultTime
          ? _self.changeDefaultTime
          : changeDefaultTime // ignore: cast_nullable_to_non_nullable
              as String?,
      consults: freezed == consults
          ? _self.consults
          : consults // ignore: cast_nullable_to_non_nullable
              as List<Consult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _QueryEntranceModel implements QueryEntranceModel {
  const _QueryEntranceModel(
      {this.name,
      this.nick,
      this.avatar,
      this.guide,
      this.defaultConsultId,
      this.changeDefaultTime,
      final List<Consult>? consults})
      : _consults = consults;
  factory _QueryEntranceModel.fromJson(Map<String, dynamic> json) =>
      _$QueryEntranceModelFromJson(json);

  @override
  final String? name;
  @override
  final String? nick;
  @override
  final String? avatar;
  @override
  final String? guide;
  @override
  final int? defaultConsultId;
  @override
  final String? changeDefaultTime;
  final List<Consult>? _consults;
  @override
  List<Consult>? get consults {
    final value = _consults;
    if (value == null) return null;
    if (_consults is EqualUnmodifiableListView) return _consults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of QueryEntranceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QueryEntranceModelCopyWith<_QueryEntranceModel> get copyWith =>
      __$QueryEntranceModelCopyWithImpl<_QueryEntranceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QueryEntranceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QueryEntranceModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nick, nick) || other.nick == nick) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.guide, guide) || other.guide == guide) &&
            (identical(other.defaultConsultId, defaultConsultId) ||
                other.defaultConsultId == defaultConsultId) &&
            (identical(other.changeDefaultTime, changeDefaultTime) ||
                other.changeDefaultTime == changeDefaultTime) &&
            const DeepCollectionEquality().equals(other._consults, _consults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      nick,
      avatar,
      guide,
      defaultConsultId,
      changeDefaultTime,
      const DeepCollectionEquality().hash(_consults));

  @override
  String toString() {
    return 'QueryEntranceModel(name: $name, nick: $nick, avatar: $avatar, guide: $guide, defaultConsultId: $defaultConsultId, changeDefaultTime: $changeDefaultTime, consults: $consults)';
  }
}

/// @nodoc
abstract mixin class _$QueryEntranceModelCopyWith<$Res>
    implements $QueryEntranceModelCopyWith<$Res> {
  factory _$QueryEntranceModelCopyWith(
          _QueryEntranceModel value, $Res Function(_QueryEntranceModel) _then) =
      __$QueryEntranceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? nick,
      String? avatar,
      String? guide,
      int? defaultConsultId,
      String? changeDefaultTime,
      List<Consult>? consults});
}

/// @nodoc
class __$QueryEntranceModelCopyWithImpl<$Res>
    implements _$QueryEntranceModelCopyWith<$Res> {
  __$QueryEntranceModelCopyWithImpl(this._self, this._then);

  final _QueryEntranceModel _self;
  final $Res Function(_QueryEntranceModel) _then;

  /// Create a copy of QueryEntranceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? nick = freezed,
    Object? avatar = freezed,
    Object? guide = freezed,
    Object? defaultConsultId = freezed,
    Object? changeDefaultTime = freezed,
    Object? consults = freezed,
  }) {
    return _then(_QueryEntranceModel(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nick: freezed == nick
          ? _self.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      guide: freezed == guide
          ? _self.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultConsultId: freezed == defaultConsultId
          ? _self.defaultConsultId
          : defaultConsultId // ignore: cast_nullable_to_non_nullable
              as int?,
      changeDefaultTime: freezed == changeDefaultTime
          ? _self.changeDefaultTime
          : changeDefaultTime // ignore: cast_nullable_to_non_nullable
              as String?,
      consults: freezed == consults
          ? _self._consults
          : consults // ignore: cast_nullable_to_non_nullable
              as List<Consult>?,
    ));
  }
}

/// @nodoc
mixin _$Consult {
  int? get consultId;
  String? get name;
  String? get guide;
  List<Work>? get works;
  int? get unread;
  int? get priority;

  /// Create a copy of Consult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConsultCopyWith<Consult> get copyWith =>
      _$ConsultCopyWithImpl<Consult>(this as Consult, _$identity);

  /// Serializes this Consult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Consult &&
            (identical(other.consultId, consultId) ||
                other.consultId == consultId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.guide, guide) || other.guide == guide) &&
            const DeepCollectionEquality().equals(other.works, works) &&
            (identical(other.unread, unread) || other.unread == unread) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, consultId, name, guide,
      const DeepCollectionEquality().hash(works), unread, priority);

  @override
  String toString() {
    return 'Consult(consultId: $consultId, name: $name, guide: $guide, works: $works, unread: $unread, priority: $priority)';
  }
}

/// @nodoc
abstract mixin class $ConsultCopyWith<$Res> {
  factory $ConsultCopyWith(Consult value, $Res Function(Consult) _then) =
      _$ConsultCopyWithImpl;
  @useResult
  $Res call(
      {int? consultId,
      String? name,
      String? guide,
      List<Work>? works,
      int? unread,
      int? priority});
}

/// @nodoc
class _$ConsultCopyWithImpl<$Res> implements $ConsultCopyWith<$Res> {
  _$ConsultCopyWithImpl(this._self, this._then);

  final Consult _self;
  final $Res Function(Consult) _then;

  /// Create a copy of Consult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultId = freezed,
    Object? name = freezed,
    Object? guide = freezed,
    Object? works = freezed,
    Object? unread = freezed,
    Object? priority = freezed,
  }) {
    return _then(_self.copyWith(
      consultId: freezed == consultId
          ? _self.consultId
          : consultId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      guide: freezed == guide
          ? _self.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as String?,
      works: freezed == works
          ? _self.works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>?,
      unread: freezed == unread
          ? _self.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Consult implements Consult {
  const _Consult(
      {this.consultId,
      this.name,
      this.guide,
      final List<Work>? works,
      this.unread,
      this.priority})
      : _works = works;
  factory _Consult.fromJson(Map<String, dynamic> json) =>
      _$ConsultFromJson(json);

  @override
  final int? consultId;
  @override
  final String? name;
  @override
  final String? guide;
  final List<Work>? _works;
  @override
  List<Work>? get works {
    final value = _works;
    if (value == null) return null;
    if (_works is EqualUnmodifiableListView) return _works;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? unread;
  @override
  final int? priority;

  /// Create a copy of Consult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConsultCopyWith<_Consult> get copyWith =>
      __$ConsultCopyWithImpl<_Consult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConsultToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Consult &&
            (identical(other.consultId, consultId) ||
                other.consultId == consultId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.guide, guide) || other.guide == guide) &&
            const DeepCollectionEquality().equals(other._works, _works) &&
            (identical(other.unread, unread) || other.unread == unread) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, consultId, name, guide,
      const DeepCollectionEquality().hash(_works), unread, priority);

  @override
  String toString() {
    return 'Consult(consultId: $consultId, name: $name, guide: $guide, works: $works, unread: $unread, priority: $priority)';
  }
}

/// @nodoc
abstract mixin class _$ConsultCopyWith<$Res> implements $ConsultCopyWith<$Res> {
  factory _$ConsultCopyWith(_Consult value, $Res Function(_Consult) _then) =
      __$ConsultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? consultId,
      String? name,
      String? guide,
      List<Work>? works,
      int? unread,
      int? priority});
}

/// @nodoc
class __$ConsultCopyWithImpl<$Res> implements _$ConsultCopyWith<$Res> {
  __$ConsultCopyWithImpl(this._self, this._then);

  final _Consult _self;
  final $Res Function(_Consult) _then;

  /// Create a copy of Consult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? consultId = freezed,
    Object? name = freezed,
    Object? guide = freezed,
    Object? works = freezed,
    Object? unread = freezed,
    Object? priority = freezed,
  }) {
    return _then(_Consult(
      consultId: freezed == consultId
          ? _self.consultId
          : consultId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      guide: freezed == guide
          ? _self.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as String?,
      works: freezed == works
          ? _self._works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>?,
      unread: freezed == unread
          ? _self.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int?,
      priority: freezed == priority
          ? _self.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$Work {
  String? get nick;
  String? get avatar;
  int? get workerId;
  String? get nimId;
  String? get connectState;
  String? get onlineState;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkCopyWith<Work> get copyWith =>
      _$WorkCopyWithImpl<Work>(this as Work, _$identity);

  /// Serializes this Work to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Work &&
            (identical(other.nick, nick) || other.nick == nick) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.workerId, workerId) ||
                other.workerId == workerId) &&
            (identical(other.nimId, nimId) || other.nimId == nimId) &&
            (identical(other.connectState, connectState) ||
                other.connectState == connectState) &&
            (identical(other.onlineState, onlineState) ||
                other.onlineState == onlineState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, nick, avatar, workerId, nimId, connectState, onlineState);

  @override
  String toString() {
    return 'Work(nick: $nick, avatar: $avatar, workerId: $workerId, nimId: $nimId, connectState: $connectState, onlineState: $onlineState)';
  }
}

/// @nodoc
abstract mixin class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) _then) =
      _$WorkCopyWithImpl;
  @useResult
  $Res call(
      {String? nick,
      String? avatar,
      int? workerId,
      String? nimId,
      String? connectState,
      String? onlineState});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res> implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._self, this._then);

  final Work _self;
  final $Res Function(Work) _then;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nick = freezed,
    Object? avatar = freezed,
    Object? workerId = freezed,
    Object? nimId = freezed,
    Object? connectState = freezed,
    Object? onlineState = freezed,
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
      nimId: freezed == nimId
          ? _self.nimId
          : nimId // ignore: cast_nullable_to_non_nullable
              as String?,
      connectState: freezed == connectState
          ? _self.connectState
          : connectState // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineState: freezed == onlineState
          ? _self.onlineState
          : onlineState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Work implements Work {
  const _Work(
      {this.nick,
      this.avatar,
      this.workerId,
      this.nimId,
      this.connectState,
      this.onlineState});
  factory _Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);

  @override
  final String? nick;
  @override
  final String? avatar;
  @override
  final int? workerId;
  @override
  final String? nimId;
  @override
  final String? connectState;
  @override
  final String? onlineState;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkCopyWith<_Work> get copyWith =>
      __$WorkCopyWithImpl<_Work>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Work &&
            (identical(other.nick, nick) || other.nick == nick) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.workerId, workerId) ||
                other.workerId == workerId) &&
            (identical(other.nimId, nimId) || other.nimId == nimId) &&
            (identical(other.connectState, connectState) ||
                other.connectState == connectState) &&
            (identical(other.onlineState, onlineState) ||
                other.onlineState == onlineState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, nick, avatar, workerId, nimId, connectState, onlineState);

  @override
  String toString() {
    return 'Work(nick: $nick, avatar: $avatar, workerId: $workerId, nimId: $nimId, connectState: $connectState, onlineState: $onlineState)';
  }
}

/// @nodoc
abstract mixin class _$WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$WorkCopyWith(_Work value, $Res Function(_Work) _then) =
      __$WorkCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? nick,
      String? avatar,
      int? workerId,
      String? nimId,
      String? connectState,
      String? onlineState});
}

/// @nodoc
class __$WorkCopyWithImpl<$Res> implements _$WorkCopyWith<$Res> {
  __$WorkCopyWithImpl(this._self, this._then);

  final _Work _self;
  final $Res Function(_Work) _then;

  /// Create a copy of Work
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nick = freezed,
    Object? avatar = freezed,
    Object? workerId = freezed,
    Object? nimId = freezed,
    Object? connectState = freezed,
    Object? onlineState = freezed,
  }) {
    return _then(_Work(
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
      nimId: freezed == nimId
          ? _self.nimId
          : nimId // ignore: cast_nullable_to_non_nullable
              as String?,
      connectState: freezed == connectState
          ? _self.connectState
          : connectState // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineState: freezed == onlineState
          ? _self.onlineState
          : onlineState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
