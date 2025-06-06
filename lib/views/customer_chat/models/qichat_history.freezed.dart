// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qichat_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QiChatHistoryModel {
  Request? get request;
  List<QichatInfoModel>? get list;
  String? get lastMsgId;
  String? get nick;
  List<QichatInfoModel>? get replyList;

  /// Create a copy of QiChatHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QiChatHistoryModelCopyWith<QiChatHistoryModel> get copyWith =>
      _$QiChatHistoryModelCopyWithImpl<QiChatHistoryModel>(
          this as QiChatHistoryModel, _$identity);

  /// Serializes this QiChatHistoryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QiChatHistoryModel &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality().equals(other.list, list) &&
            (identical(other.lastMsgId, lastMsgId) ||
                other.lastMsgId == lastMsgId) &&
            (identical(other.nick, nick) || other.nick == nick) &&
            const DeepCollectionEquality().equals(other.replyList, replyList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      request,
      const DeepCollectionEquality().hash(list),
      lastMsgId,
      nick,
      const DeepCollectionEquality().hash(replyList));

  @override
  String toString() {
    return 'QiChatHistoryModel(request: $request, list: $list, lastMsgId: $lastMsgId, nick: $nick, replyList: $replyList)';
  }
}

/// @nodoc
abstract mixin class $QiChatHistoryModelCopyWith<$Res> {
  factory $QiChatHistoryModelCopyWith(
          QiChatHistoryModel value, $Res Function(QiChatHistoryModel) _then) =
      _$QiChatHistoryModelCopyWithImpl;
  @useResult
  $Res call(
      {Request? request,
      List<QichatInfoModel>? list,
      String? lastMsgId,
      String? nick,
      List<QichatInfoModel>? replyList});

  $RequestCopyWith<$Res>? get request;
}

/// @nodoc
class _$QiChatHistoryModelCopyWithImpl<$Res>
    implements $QiChatHistoryModelCopyWith<$Res> {
  _$QiChatHistoryModelCopyWithImpl(this._self, this._then);

  final QiChatHistoryModel _self;
  final $Res Function(QiChatHistoryModel) _then;

  /// Create a copy of QiChatHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = freezed,
    Object? list = freezed,
    Object? lastMsgId = freezed,
    Object? nick = freezed,
    Object? replyList = freezed,
  }) {
    return _then(_self.copyWith(
      request: freezed == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request?,
      list: freezed == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<QichatInfoModel>?,
      lastMsgId: freezed == lastMsgId
          ? _self.lastMsgId
          : lastMsgId // ignore: cast_nullable_to_non_nullable
              as String?,
      nick: freezed == nick
          ? _self.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
      replyList: freezed == replyList
          ? _self.replyList
          : replyList // ignore: cast_nullable_to_non_nullable
              as List<QichatInfoModel>?,
    ));
  }

  /// Create a copy of QiChatHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestCopyWith<$Res>? get request {
    if (_self.request == null) {
      return null;
    }

    return $RequestCopyWith<$Res>(_self.request!, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _QiChatHistoryModel implements QiChatHistoryModel {
  const _QiChatHistoryModel(
      {this.request,
      final List<QichatInfoModel>? list,
      this.lastMsgId,
      this.nick,
      final List<QichatInfoModel>? replyList})
      : _list = list,
        _replyList = replyList;
  factory _QiChatHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$QiChatHistoryModelFromJson(json);

  @override
  final Request? request;
  final List<QichatInfoModel>? _list;
  @override
  List<QichatInfoModel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? lastMsgId;
  @override
  final String? nick;
  final List<QichatInfoModel>? _replyList;
  @override
  List<QichatInfoModel>? get replyList {
    final value = _replyList;
    if (value == null) return null;
    if (_replyList is EqualUnmodifiableListView) return _replyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of QiChatHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QiChatHistoryModelCopyWith<_QiChatHistoryModel> get copyWith =>
      __$QiChatHistoryModelCopyWithImpl<_QiChatHistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QiChatHistoryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QiChatHistoryModel &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.lastMsgId, lastMsgId) ||
                other.lastMsgId == lastMsgId) &&
            (identical(other.nick, nick) || other.nick == nick) &&
            const DeepCollectionEquality()
                .equals(other._replyList, _replyList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      request,
      const DeepCollectionEquality().hash(_list),
      lastMsgId,
      nick,
      const DeepCollectionEquality().hash(_replyList));

  @override
  String toString() {
    return 'QiChatHistoryModel(request: $request, list: $list, lastMsgId: $lastMsgId, nick: $nick, replyList: $replyList)';
  }
}

/// @nodoc
abstract mixin class _$QiChatHistoryModelCopyWith<$Res>
    implements $QiChatHistoryModelCopyWith<$Res> {
  factory _$QiChatHistoryModelCopyWith(
          _QiChatHistoryModel value, $Res Function(_QiChatHistoryModel) _then) =
      __$QiChatHistoryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Request? request,
      List<QichatInfoModel>? list,
      String? lastMsgId,
      String? nick,
      List<QichatInfoModel>? replyList});

  @override
  $RequestCopyWith<$Res>? get request;
}

/// @nodoc
class __$QiChatHistoryModelCopyWithImpl<$Res>
    implements _$QiChatHistoryModelCopyWith<$Res> {
  __$QiChatHistoryModelCopyWithImpl(this._self, this._then);

  final _QiChatHistoryModel _self;
  final $Res Function(_QiChatHistoryModel) _then;

  /// Create a copy of QiChatHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = freezed,
    Object? list = freezed,
    Object? lastMsgId = freezed,
    Object? nick = freezed,
    Object? replyList = freezed,
  }) {
    return _then(_QiChatHistoryModel(
      request: freezed == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as Request?,
      list: freezed == list
          ? _self._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<QichatInfoModel>?,
      lastMsgId: freezed == lastMsgId
          ? _self.lastMsgId
          : lastMsgId // ignore: cast_nullable_to_non_nullable
              as String?,
      nick: freezed == nick
          ? _self.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
      replyList: freezed == replyList
          ? _self._replyList
          : replyList // ignore: cast_nullable_to_non_nullable
              as List<QichatInfoModel>?,
    ));
  }

  /// Create a copy of QiChatHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestCopyWith<$Res>? get request {
    if (_self.request == null) {
      return null;
    }

    return $RequestCopyWith<$Res>(_self.request!, (value) {
      return _then(_self.copyWith(request: value));
    });
  }
}

/// @nodoc
mixin _$Request {
  String? get chatId;
  String? get msgId;
  int? get count;
  bool? get withLastOne;
  int? get workerId;
  int? get consultId;
  int? get userId;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestCopyWith<Request> get copyWith =>
      _$RequestCopyWithImpl<Request>(this as Request, _$identity);

  /// Serializes this Request to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Request &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.withLastOne, withLastOne) ||
                other.withLastOne == withLastOne) &&
            (identical(other.workerId, workerId) ||
                other.workerId == workerId) &&
            (identical(other.consultId, consultId) ||
                other.consultId == consultId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chatId, msgId, count,
      withLastOne, workerId, consultId, userId);

  @override
  String toString() {
    return 'Request(chatId: $chatId, msgId: $msgId, count: $count, withLastOne: $withLastOne, workerId: $workerId, consultId: $consultId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) _then) =
      _$RequestCopyWithImpl;
  @useResult
  $Res call(
      {String? chatId,
      String? msgId,
      int? count,
      bool? withLastOne,
      int? workerId,
      int? consultId,
      int? userId});
}

/// @nodoc
class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._self, this._then);

  final Request _self;
  final $Res Function(Request) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? msgId = freezed,
    Object? count = freezed,
    Object? withLastOne = freezed,
    Object? workerId = freezed,
    Object? consultId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_self.copyWith(
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgId: freezed == msgId
          ? _self.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      withLastOne: freezed == withLastOne
          ? _self.withLastOne
          : withLastOne // ignore: cast_nullable_to_non_nullable
              as bool?,
      workerId: freezed == workerId
          ? _self.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as int?,
      consultId: freezed == consultId
          ? _self.consultId
          : consultId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Request implements Request {
  const _Request(
      {this.chatId,
      this.msgId,
      this.count,
      this.withLastOne,
      this.workerId,
      this.consultId,
      this.userId});
  factory _Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);

  @override
  final String? chatId;
  @override
  final String? msgId;
  @override
  final int? count;
  @override
  final bool? withLastOne;
  @override
  final int? workerId;
  @override
  final int? consultId;
  @override
  final int? userId;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RequestCopyWith<_Request> get copyWith =>
      __$RequestCopyWithImpl<_Request>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Request &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.withLastOne, withLastOne) ||
                other.withLastOne == withLastOne) &&
            (identical(other.workerId, workerId) ||
                other.workerId == workerId) &&
            (identical(other.consultId, consultId) ||
                other.consultId == consultId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chatId, msgId, count,
      withLastOne, workerId, consultId, userId);

  @override
  String toString() {
    return 'Request(chatId: $chatId, msgId: $msgId, count: $count, withLastOne: $withLastOne, workerId: $workerId, consultId: $consultId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class _$RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$RequestCopyWith(_Request value, $Res Function(_Request) _then) =
      __$RequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? chatId,
      String? msgId,
      int? count,
      bool? withLastOne,
      int? workerId,
      int? consultId,
      int? userId});
}

/// @nodoc
class __$RequestCopyWithImpl<$Res> implements _$RequestCopyWith<$Res> {
  __$RequestCopyWithImpl(this._self, this._then);

  final _Request _self;
  final $Res Function(_Request) _then;

  /// Create a copy of Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chatId = freezed,
    Object? msgId = freezed,
    Object? count = freezed,
    Object? withLastOne = freezed,
    Object? workerId = freezed,
    Object? consultId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Request(
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgId: freezed == msgId
          ? _self.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      withLastOne: freezed == withLastOne
          ? _self.withLastOne
          : withLastOne // ignore: cast_nullable_to_non_nullable
              as bool?,
      workerId: freezed == workerId
          ? _self.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as int?,
      consultId: freezed == consultId
          ? _self.consultId
          : consultId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$QichatInfoModel {
  String? get chatId;
  String? get msgId;
  String? get msgTime;
  String? get sender;
  String? get replyMsgId;
  String? get msgOp;
  int? get worker;
  AutoReplyFlag? get autoReplyFlag;
  String? get msgFmt;
  String? get consultId;
  List<WithAutoReplyMessage>? get withAutoReplies;
  String? get msgSourceType;
  String? get payloadId;
  Content? get content;
  Media? get image;
  Media? get audio;
  Media? get video;
  Geo? get geo;
  FileClass? get file;
  WorkerTrans? get workerTrans;
  Blacklist? get blacklistApply;
  Blacklist? get blacklistConfirm;
  AutoReply? get autoReply;
  WorkerChanged? get workerChanged;

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QichatInfoModelCopyWith<QichatInfoModel> get copyWith =>
      _$QichatInfoModelCopyWithImpl<QichatInfoModel>(
          this as QichatInfoModel, _$identity);

  /// Serializes this QichatInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QichatInfoModel &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.msgTime, msgTime) || other.msgTime == msgTime) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.replyMsgId, replyMsgId) ||
                other.replyMsgId == replyMsgId) &&
            (identical(other.msgOp, msgOp) || other.msgOp == msgOp) &&
            (identical(other.worker, worker) || other.worker == worker) &&
            (identical(other.autoReplyFlag, autoReplyFlag) ||
                other.autoReplyFlag == autoReplyFlag) &&
            (identical(other.msgFmt, msgFmt) || other.msgFmt == msgFmt) &&
            (identical(other.consultId, consultId) ||
                other.consultId == consultId) &&
            const DeepCollectionEquality()
                .equals(other.withAutoReplies, withAutoReplies) &&
            (identical(other.msgSourceType, msgSourceType) ||
                other.msgSourceType == msgSourceType) &&
            (identical(other.payloadId, payloadId) ||
                other.payloadId == payloadId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.geo, geo) || other.geo == geo) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.workerTrans, workerTrans) ||
                other.workerTrans == workerTrans) &&
            (identical(other.blacklistApply, blacklistApply) ||
                other.blacklistApply == blacklistApply) &&
            (identical(other.blacklistConfirm, blacklistConfirm) ||
                other.blacklistConfirm == blacklistConfirm) &&
            (identical(other.autoReply, autoReply) ||
                other.autoReply == autoReply) &&
            (identical(other.workerChanged, workerChanged) ||
                other.workerChanged == workerChanged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        chatId,
        msgId,
        msgTime,
        sender,
        replyMsgId,
        msgOp,
        worker,
        autoReplyFlag,
        msgFmt,
        consultId,
        const DeepCollectionEquality().hash(withAutoReplies),
        msgSourceType,
        payloadId,
        content,
        image,
        audio,
        video,
        geo,
        file,
        workerTrans,
        blacklistApply,
        blacklistConfirm,
        autoReply,
        workerChanged
      ]);

  @override
  String toString() {
    return 'QichatInfoModel(chatId: $chatId, msgId: $msgId, msgTime: $msgTime, sender: $sender, replyMsgId: $replyMsgId, msgOp: $msgOp, worker: $worker, autoReplyFlag: $autoReplyFlag, msgFmt: $msgFmt, consultId: $consultId, withAutoReplies: $withAutoReplies, msgSourceType: $msgSourceType, payloadId: $payloadId, content: $content, image: $image, audio: $audio, video: $video, geo: $geo, file: $file, workerTrans: $workerTrans, blacklistApply: $blacklistApply, blacklistConfirm: $blacklistConfirm, autoReply: $autoReply, workerChanged: $workerChanged)';
  }
}

/// @nodoc
abstract mixin class $QichatInfoModelCopyWith<$Res> {
  factory $QichatInfoModelCopyWith(
          QichatInfoModel value, $Res Function(QichatInfoModel) _then) =
      _$QichatInfoModelCopyWithImpl;
  @useResult
  $Res call(
      {String? chatId,
      String? msgId,
      String? msgTime,
      String? sender,
      String? replyMsgId,
      String? msgOp,
      int? worker,
      AutoReplyFlag? autoReplyFlag,
      String? msgFmt,
      String? consultId,
      List<WithAutoReplyMessage>? withAutoReplies,
      String? msgSourceType,
      String? payloadId,
      Content? content,
      Media? image,
      Media? audio,
      Media? video,
      Geo? geo,
      FileClass? file,
      WorkerTrans? workerTrans,
      Blacklist? blacklistApply,
      Blacklist? blacklistConfirm,
      AutoReply? autoReply,
      WorkerChanged? workerChanged});

  $AutoReplyFlagCopyWith<$Res>? get autoReplyFlag;
  $ContentCopyWith<$Res>? get content;
  $MediaCopyWith<$Res>? get image;
  $MediaCopyWith<$Res>? get audio;
  $MediaCopyWith<$Res>? get video;
  $GeoCopyWith<$Res>? get geo;
  $FileClassCopyWith<$Res>? get file;
  $WorkerTransCopyWith<$Res>? get workerTrans;
  $BlacklistCopyWith<$Res>? get blacklistApply;
  $BlacklistCopyWith<$Res>? get blacklistConfirm;
  $AutoReplyCopyWith<$Res>? get autoReply;
  $WorkerChangedCopyWith<$Res>? get workerChanged;
}

/// @nodoc
class _$QichatInfoModelCopyWithImpl<$Res>
    implements $QichatInfoModelCopyWith<$Res> {
  _$QichatInfoModelCopyWithImpl(this._self, this._then);

  final QichatInfoModel _self;
  final $Res Function(QichatInfoModel) _then;

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? msgId = freezed,
    Object? msgTime = freezed,
    Object? sender = freezed,
    Object? replyMsgId = freezed,
    Object? msgOp = freezed,
    Object? worker = freezed,
    Object? autoReplyFlag = freezed,
    Object? msgFmt = freezed,
    Object? consultId = freezed,
    Object? withAutoReplies = freezed,
    Object? msgSourceType = freezed,
    Object? payloadId = freezed,
    Object? content = freezed,
    Object? image = freezed,
    Object? audio = freezed,
    Object? video = freezed,
    Object? geo = freezed,
    Object? file = freezed,
    Object? workerTrans = freezed,
    Object? blacklistApply = freezed,
    Object? blacklistConfirm = freezed,
    Object? autoReply = freezed,
    Object? workerChanged = freezed,
  }) {
    return _then(_self.copyWith(
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgId: freezed == msgId
          ? _self.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgTime: freezed == msgTime
          ? _self.msgTime
          : msgTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _self.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      replyMsgId: freezed == replyMsgId
          ? _self.replyMsgId
          : replyMsgId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgOp: freezed == msgOp
          ? _self.msgOp
          : msgOp // ignore: cast_nullable_to_non_nullable
              as String?,
      worker: freezed == worker
          ? _self.worker
          : worker // ignore: cast_nullable_to_non_nullable
              as int?,
      autoReplyFlag: freezed == autoReplyFlag
          ? _self.autoReplyFlag
          : autoReplyFlag // ignore: cast_nullable_to_non_nullable
              as AutoReplyFlag?,
      msgFmt: freezed == msgFmt
          ? _self.msgFmt
          : msgFmt // ignore: cast_nullable_to_non_nullable
              as String?,
      consultId: freezed == consultId
          ? _self.consultId
          : consultId // ignore: cast_nullable_to_non_nullable
              as String?,
      withAutoReplies: freezed == withAutoReplies
          ? _self.withAutoReplies
          : withAutoReplies // ignore: cast_nullable_to_non_nullable
              as List<WithAutoReplyMessage>?,
      msgSourceType: freezed == msgSourceType
          ? _self.msgSourceType
          : msgSourceType // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadId: freezed == payloadId
          ? _self.payloadId
          : payloadId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as Media?,
      audio: freezed == audio
          ? _self.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Media?,
      video: freezed == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as Media?,
      geo: freezed == geo
          ? _self.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo?,
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileClass?,
      workerTrans: freezed == workerTrans
          ? _self.workerTrans
          : workerTrans // ignore: cast_nullable_to_non_nullable
              as WorkerTrans?,
      blacklistApply: freezed == blacklistApply
          ? _self.blacklistApply
          : blacklistApply // ignore: cast_nullable_to_non_nullable
              as Blacklist?,
      blacklistConfirm: freezed == blacklistConfirm
          ? _self.blacklistConfirm
          : blacklistConfirm // ignore: cast_nullable_to_non_nullable
              as Blacklist?,
      autoReply: freezed == autoReply
          ? _self.autoReply
          : autoReply // ignore: cast_nullable_to_non_nullable
              as AutoReply?,
      workerChanged: freezed == workerChanged
          ? _self.workerChanged
          : workerChanged // ignore: cast_nullable_to_non_nullable
              as WorkerChanged?,
    ));
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoReplyFlagCopyWith<$Res>? get autoReplyFlag {
    if (_self.autoReplyFlag == null) {
      return null;
    }

    return $AutoReplyFlagCopyWith<$Res>(_self.autoReplyFlag!, (value) {
      return _then(_self.copyWith(autoReplyFlag: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_self.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_self.content!, (value) {
      return _then(_self.copyWith(content: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get image {
    if (_self.image == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.image!, (value) {
      return _then(_self.copyWith(image: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get audio {
    if (_self.audio == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.audio!, (value) {
      return _then(_self.copyWith(audio: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get video {
    if (_self.video == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.video!, (value) {
      return _then(_self.copyWith(video: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoCopyWith<$Res>? get geo {
    if (_self.geo == null) {
      return null;
    }

    return $GeoCopyWith<$Res>(_self.geo!, (value) {
      return _then(_self.copyWith(geo: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileClassCopyWith<$Res>? get file {
    if (_self.file == null) {
      return null;
    }

    return $FileClassCopyWith<$Res>(_self.file!, (value) {
      return _then(_self.copyWith(file: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkerTransCopyWith<$Res>? get workerTrans {
    if (_self.workerTrans == null) {
      return null;
    }

    return $WorkerTransCopyWith<$Res>(_self.workerTrans!, (value) {
      return _then(_self.copyWith(workerTrans: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlacklistCopyWith<$Res>? get blacklistApply {
    if (_self.blacklistApply == null) {
      return null;
    }

    return $BlacklistCopyWith<$Res>(_self.blacklistApply!, (value) {
      return _then(_self.copyWith(blacklistApply: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlacklistCopyWith<$Res>? get blacklistConfirm {
    if (_self.blacklistConfirm == null) {
      return null;
    }

    return $BlacklistCopyWith<$Res>(_self.blacklistConfirm!, (value) {
      return _then(_self.copyWith(blacklistConfirm: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoReplyCopyWith<$Res>? get autoReply {
    if (_self.autoReply == null) {
      return null;
    }

    return $AutoReplyCopyWith<$Res>(_self.autoReply!, (value) {
      return _then(_self.copyWith(autoReply: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkerChangedCopyWith<$Res>? get workerChanged {
    if (_self.workerChanged == null) {
      return null;
    }

    return $WorkerChangedCopyWith<$Res>(_self.workerChanged!, (value) {
      return _then(_self.copyWith(workerChanged: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _QichatInfoModel implements QichatInfoModel {
  const _QichatInfoModel(
      {this.chatId,
      this.msgId,
      this.msgTime,
      this.sender,
      this.replyMsgId,
      this.msgOp,
      this.worker,
      this.autoReplyFlag,
      this.msgFmt,
      this.consultId,
      final List<WithAutoReplyMessage>? withAutoReplies,
      this.msgSourceType,
      this.payloadId,
      this.content,
      this.image,
      this.audio,
      this.video,
      this.geo,
      this.file,
      this.workerTrans,
      this.blacklistApply,
      this.blacklistConfirm,
      this.autoReply,
      this.workerChanged})
      : _withAutoReplies = withAutoReplies;
  factory _QichatInfoModel.fromJson(Map<String, dynamic> json) =>
      _$QichatInfoModelFromJson(json);

  @override
  final String? chatId;
  @override
  final String? msgId;
  @override
  final String? msgTime;
  @override
  final String? sender;
  @override
  final String? replyMsgId;
  @override
  final String? msgOp;
  @override
  final int? worker;
  @override
  final AutoReplyFlag? autoReplyFlag;
  @override
  final String? msgFmt;
  @override
  final String? consultId;
  final List<WithAutoReplyMessage>? _withAutoReplies;
  @override
  List<WithAutoReplyMessage>? get withAutoReplies {
    final value = _withAutoReplies;
    if (value == null) return null;
    if (_withAutoReplies is EqualUnmodifiableListView) return _withAutoReplies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? msgSourceType;
  @override
  final String? payloadId;
  @override
  final Content? content;
  @override
  final Media? image;
  @override
  final Media? audio;
  @override
  final Media? video;
  @override
  final Geo? geo;
  @override
  final FileClass? file;
  @override
  final WorkerTrans? workerTrans;
  @override
  final Blacklist? blacklistApply;
  @override
  final Blacklist? blacklistConfirm;
  @override
  final AutoReply? autoReply;
  @override
  final WorkerChanged? workerChanged;

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QichatInfoModelCopyWith<_QichatInfoModel> get copyWith =>
      __$QichatInfoModelCopyWithImpl<_QichatInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QichatInfoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QichatInfoModel &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.msgTime, msgTime) || other.msgTime == msgTime) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.replyMsgId, replyMsgId) ||
                other.replyMsgId == replyMsgId) &&
            (identical(other.msgOp, msgOp) || other.msgOp == msgOp) &&
            (identical(other.worker, worker) || other.worker == worker) &&
            (identical(other.autoReplyFlag, autoReplyFlag) ||
                other.autoReplyFlag == autoReplyFlag) &&
            (identical(other.msgFmt, msgFmt) || other.msgFmt == msgFmt) &&
            (identical(other.consultId, consultId) ||
                other.consultId == consultId) &&
            const DeepCollectionEquality()
                .equals(other._withAutoReplies, _withAutoReplies) &&
            (identical(other.msgSourceType, msgSourceType) ||
                other.msgSourceType == msgSourceType) &&
            (identical(other.payloadId, payloadId) ||
                other.payloadId == payloadId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.geo, geo) || other.geo == geo) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.workerTrans, workerTrans) ||
                other.workerTrans == workerTrans) &&
            (identical(other.blacklistApply, blacklistApply) ||
                other.blacklistApply == blacklistApply) &&
            (identical(other.blacklistConfirm, blacklistConfirm) ||
                other.blacklistConfirm == blacklistConfirm) &&
            (identical(other.autoReply, autoReply) ||
                other.autoReply == autoReply) &&
            (identical(other.workerChanged, workerChanged) ||
                other.workerChanged == workerChanged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        chatId,
        msgId,
        msgTime,
        sender,
        replyMsgId,
        msgOp,
        worker,
        autoReplyFlag,
        msgFmt,
        consultId,
        const DeepCollectionEquality().hash(_withAutoReplies),
        msgSourceType,
        payloadId,
        content,
        image,
        audio,
        video,
        geo,
        file,
        workerTrans,
        blacklistApply,
        blacklistConfirm,
        autoReply,
        workerChanged
      ]);

  @override
  String toString() {
    return 'QichatInfoModel(chatId: $chatId, msgId: $msgId, msgTime: $msgTime, sender: $sender, replyMsgId: $replyMsgId, msgOp: $msgOp, worker: $worker, autoReplyFlag: $autoReplyFlag, msgFmt: $msgFmt, consultId: $consultId, withAutoReplies: $withAutoReplies, msgSourceType: $msgSourceType, payloadId: $payloadId, content: $content, image: $image, audio: $audio, video: $video, geo: $geo, file: $file, workerTrans: $workerTrans, blacklistApply: $blacklistApply, blacklistConfirm: $blacklistConfirm, autoReply: $autoReply, workerChanged: $workerChanged)';
  }
}

/// @nodoc
abstract mixin class _$QichatInfoModelCopyWith<$Res>
    implements $QichatInfoModelCopyWith<$Res> {
  factory _$QichatInfoModelCopyWith(
          _QichatInfoModel value, $Res Function(_QichatInfoModel) _then) =
      __$QichatInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? chatId,
      String? msgId,
      String? msgTime,
      String? sender,
      String? replyMsgId,
      String? msgOp,
      int? worker,
      AutoReplyFlag? autoReplyFlag,
      String? msgFmt,
      String? consultId,
      List<WithAutoReplyMessage>? withAutoReplies,
      String? msgSourceType,
      String? payloadId,
      Content? content,
      Media? image,
      Media? audio,
      Media? video,
      Geo? geo,
      FileClass? file,
      WorkerTrans? workerTrans,
      Blacklist? blacklistApply,
      Blacklist? blacklistConfirm,
      AutoReply? autoReply,
      WorkerChanged? workerChanged});

  @override
  $AutoReplyFlagCopyWith<$Res>? get autoReplyFlag;
  @override
  $ContentCopyWith<$Res>? get content;
  @override
  $MediaCopyWith<$Res>? get image;
  @override
  $MediaCopyWith<$Res>? get audio;
  @override
  $MediaCopyWith<$Res>? get video;
  @override
  $GeoCopyWith<$Res>? get geo;
  @override
  $FileClassCopyWith<$Res>? get file;
  @override
  $WorkerTransCopyWith<$Res>? get workerTrans;
  @override
  $BlacklistCopyWith<$Res>? get blacklistApply;
  @override
  $BlacklistCopyWith<$Res>? get blacklistConfirm;
  @override
  $AutoReplyCopyWith<$Res>? get autoReply;
  @override
  $WorkerChangedCopyWith<$Res>? get workerChanged;
}

/// @nodoc
class __$QichatInfoModelCopyWithImpl<$Res>
    implements _$QichatInfoModelCopyWith<$Res> {
  __$QichatInfoModelCopyWithImpl(this._self, this._then);

  final _QichatInfoModel _self;
  final $Res Function(_QichatInfoModel) _then;

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chatId = freezed,
    Object? msgId = freezed,
    Object? msgTime = freezed,
    Object? sender = freezed,
    Object? replyMsgId = freezed,
    Object? msgOp = freezed,
    Object? worker = freezed,
    Object? autoReplyFlag = freezed,
    Object? msgFmt = freezed,
    Object? consultId = freezed,
    Object? withAutoReplies = freezed,
    Object? msgSourceType = freezed,
    Object? payloadId = freezed,
    Object? content = freezed,
    Object? image = freezed,
    Object? audio = freezed,
    Object? video = freezed,
    Object? geo = freezed,
    Object? file = freezed,
    Object? workerTrans = freezed,
    Object? blacklistApply = freezed,
    Object? blacklistConfirm = freezed,
    Object? autoReply = freezed,
    Object? workerChanged = freezed,
  }) {
    return _then(_QichatInfoModel(
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgId: freezed == msgId
          ? _self.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgTime: freezed == msgTime
          ? _self.msgTime
          : msgTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _self.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      replyMsgId: freezed == replyMsgId
          ? _self.replyMsgId
          : replyMsgId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgOp: freezed == msgOp
          ? _self.msgOp
          : msgOp // ignore: cast_nullable_to_non_nullable
              as String?,
      worker: freezed == worker
          ? _self.worker
          : worker // ignore: cast_nullable_to_non_nullable
              as int?,
      autoReplyFlag: freezed == autoReplyFlag
          ? _self.autoReplyFlag
          : autoReplyFlag // ignore: cast_nullable_to_non_nullable
              as AutoReplyFlag?,
      msgFmt: freezed == msgFmt
          ? _self.msgFmt
          : msgFmt // ignore: cast_nullable_to_non_nullable
              as String?,
      consultId: freezed == consultId
          ? _self.consultId
          : consultId // ignore: cast_nullable_to_non_nullable
              as String?,
      withAutoReplies: freezed == withAutoReplies
          ? _self._withAutoReplies
          : withAutoReplies // ignore: cast_nullable_to_non_nullable
              as List<WithAutoReplyMessage>?,
      msgSourceType: freezed == msgSourceType
          ? _self.msgSourceType
          : msgSourceType // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadId: freezed == payloadId
          ? _self.payloadId
          : payloadId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as Media?,
      audio: freezed == audio
          ? _self.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Media?,
      video: freezed == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as Media?,
      geo: freezed == geo
          ? _self.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo?,
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileClass?,
      workerTrans: freezed == workerTrans
          ? _self.workerTrans
          : workerTrans // ignore: cast_nullable_to_non_nullable
              as WorkerTrans?,
      blacklistApply: freezed == blacklistApply
          ? _self.blacklistApply
          : blacklistApply // ignore: cast_nullable_to_non_nullable
              as Blacklist?,
      blacklistConfirm: freezed == blacklistConfirm
          ? _self.blacklistConfirm
          : blacklistConfirm // ignore: cast_nullable_to_non_nullable
              as Blacklist?,
      autoReply: freezed == autoReply
          ? _self.autoReply
          : autoReply // ignore: cast_nullable_to_non_nullable
              as AutoReply?,
      workerChanged: freezed == workerChanged
          ? _self.workerChanged
          : workerChanged // ignore: cast_nullable_to_non_nullable
              as WorkerChanged?,
    ));
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoReplyFlagCopyWith<$Res>? get autoReplyFlag {
    if (_self.autoReplyFlag == null) {
      return null;
    }

    return $AutoReplyFlagCopyWith<$Res>(_self.autoReplyFlag!, (value) {
      return _then(_self.copyWith(autoReplyFlag: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_self.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_self.content!, (value) {
      return _then(_self.copyWith(content: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get image {
    if (_self.image == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.image!, (value) {
      return _then(_self.copyWith(image: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get audio {
    if (_self.audio == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.audio!, (value) {
      return _then(_self.copyWith(audio: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get video {
    if (_self.video == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.video!, (value) {
      return _then(_self.copyWith(video: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoCopyWith<$Res>? get geo {
    if (_self.geo == null) {
      return null;
    }

    return $GeoCopyWith<$Res>(_self.geo!, (value) {
      return _then(_self.copyWith(geo: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileClassCopyWith<$Res>? get file {
    if (_self.file == null) {
      return null;
    }

    return $FileClassCopyWith<$Res>(_self.file!, (value) {
      return _then(_self.copyWith(file: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkerTransCopyWith<$Res>? get workerTrans {
    if (_self.workerTrans == null) {
      return null;
    }

    return $WorkerTransCopyWith<$Res>(_self.workerTrans!, (value) {
      return _then(_self.copyWith(workerTrans: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlacklistCopyWith<$Res>? get blacklistApply {
    if (_self.blacklistApply == null) {
      return null;
    }

    return $BlacklistCopyWith<$Res>(_self.blacklistApply!, (value) {
      return _then(_self.copyWith(blacklistApply: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlacklistCopyWith<$Res>? get blacklistConfirm {
    if (_self.blacklistConfirm == null) {
      return null;
    }

    return $BlacklistCopyWith<$Res>(_self.blacklistConfirm!, (value) {
      return _then(_self.copyWith(blacklistConfirm: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoReplyCopyWith<$Res>? get autoReply {
    if (_self.autoReply == null) {
      return null;
    }

    return $AutoReplyCopyWith<$Res>(_self.autoReply!, (value) {
      return _then(_self.copyWith(autoReply: value));
    });
  }

  /// Create a copy of QichatInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkerChangedCopyWith<$Res>? get workerChanged {
    if (_self.workerChanged == null) {
      return null;
    }

    return $WorkerChangedCopyWith<$Res>(_self.workerChanged!, (value) {
      return _then(_self.copyWith(workerChanged: value));
    });
  }
}

/// @nodoc
mixin _$AutoReplyFlag {
  String? get id;
  int? get qaId;

  /// Create a copy of AutoReplyFlag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AutoReplyFlagCopyWith<AutoReplyFlag> get copyWith =>
      _$AutoReplyFlagCopyWithImpl<AutoReplyFlag>(
          this as AutoReplyFlag, _$identity);

  /// Serializes this AutoReplyFlag to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoReplyFlag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.qaId, qaId) || other.qaId == qaId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, qaId);

  @override
  String toString() {
    return 'AutoReplyFlag(id: $id, qaId: $qaId)';
  }
}

/// @nodoc
abstract mixin class $AutoReplyFlagCopyWith<$Res> {
  factory $AutoReplyFlagCopyWith(
          AutoReplyFlag value, $Res Function(AutoReplyFlag) _then) =
      _$AutoReplyFlagCopyWithImpl;
  @useResult
  $Res call({String? id, int? qaId});
}

/// @nodoc
class _$AutoReplyFlagCopyWithImpl<$Res>
    implements $AutoReplyFlagCopyWith<$Res> {
  _$AutoReplyFlagCopyWithImpl(this._self, this._then);

  final AutoReplyFlag _self;
  final $Res Function(AutoReplyFlag) _then;

  /// Create a copy of AutoReplyFlag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? qaId = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      qaId: freezed == qaId
          ? _self.qaId
          : qaId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AutoReplyFlag implements AutoReplyFlag {
  const _AutoReplyFlag({this.id, this.qaId});
  factory _AutoReplyFlag.fromJson(Map<String, dynamic> json) =>
      _$AutoReplyFlagFromJson(json);

  @override
  final String? id;
  @override
  final int? qaId;

  /// Create a copy of AutoReplyFlag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AutoReplyFlagCopyWith<_AutoReplyFlag> get copyWith =>
      __$AutoReplyFlagCopyWithImpl<_AutoReplyFlag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AutoReplyFlagToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoReplyFlag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.qaId, qaId) || other.qaId == qaId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, qaId);

  @override
  String toString() {
    return 'AutoReplyFlag(id: $id, qaId: $qaId)';
  }
}

/// @nodoc
abstract mixin class _$AutoReplyFlagCopyWith<$Res>
    implements $AutoReplyFlagCopyWith<$Res> {
  factory _$AutoReplyFlagCopyWith(
          _AutoReplyFlag value, $Res Function(_AutoReplyFlag) _then) =
      __$AutoReplyFlagCopyWithImpl;
  @override
  @useResult
  $Res call({String? id, int? qaId});
}

/// @nodoc
class __$AutoReplyFlagCopyWithImpl<$Res>
    implements _$AutoReplyFlagCopyWith<$Res> {
  __$AutoReplyFlagCopyWithImpl(this._self, this._then);

  final _AutoReplyFlag _self;
  final $Res Function(_AutoReplyFlag) _then;

  /// Create a copy of AutoReplyFlag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? qaId = freezed,
  }) {
    return _then(_AutoReplyFlag(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      qaId: freezed == qaId
          ? _self.qaId
          : qaId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$Media {
  String? get uri;
  String? get hlsUri;
  String? get thumbnailUri;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MediaCopyWith<Media> get copyWith =>
      _$MediaCopyWithImpl<Media>(this as Media, _$identity);

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Media &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.hlsUri, hlsUri) || other.hlsUri == hlsUri) &&
            (identical(other.thumbnailUri, thumbnailUri) ||
                other.thumbnailUri == thumbnailUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, hlsUri, thumbnailUri);

  @override
  String toString() {
    return 'Media(uri: $uri, hlsUri: $hlsUri, thumbnailUri: $thumbnailUri)';
  }
}

/// @nodoc
abstract mixin class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) _then) =
      _$MediaCopyWithImpl;
  @useResult
  $Res call({String? uri, String? hlsUri, String? thumbnailUri});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res> implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._self, this._then);

  final Media _self;
  final $Res Function(Media) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? hlsUri = freezed,
    Object? thumbnailUri = freezed,
  }) {
    return _then(_self.copyWith(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      hlsUri: freezed == hlsUri
          ? _self.hlsUri
          : hlsUri // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUri: freezed == thumbnailUri
          ? _self.thumbnailUri
          : thumbnailUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Media implements Media {
  const _Media({this.uri, this.hlsUri, this.thumbnailUri});
  factory _Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  @override
  final String? uri;
  @override
  final String? hlsUri;
  @override
  final String? thumbnailUri;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MediaCopyWith<_Media> get copyWith =>
      __$MediaCopyWithImpl<_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MediaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Media &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.hlsUri, hlsUri) || other.hlsUri == hlsUri) &&
            (identical(other.thumbnailUri, thumbnailUri) ||
                other.thumbnailUri == thumbnailUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, hlsUri, thumbnailUri);

  @override
  String toString() {
    return 'Media(uri: $uri, hlsUri: $hlsUri, thumbnailUri: $thumbnailUri)';
  }
}

/// @nodoc
abstract mixin class _$MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$MediaCopyWith(_Media value, $Res Function(_Media) _then) =
      __$MediaCopyWithImpl;
  @override
  @useResult
  $Res call({String? uri, String? hlsUri, String? thumbnailUri});
}

/// @nodoc
class __$MediaCopyWithImpl<$Res> implements _$MediaCopyWith<$Res> {
  __$MediaCopyWithImpl(this._self, this._then);

  final _Media _self;
  final $Res Function(_Media) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uri = freezed,
    Object? hlsUri = freezed,
    Object? thumbnailUri = freezed,
  }) {
    return _then(_Media(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      hlsUri: freezed == hlsUri
          ? _self.hlsUri
          : hlsUri // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUri: freezed == thumbnailUri
          ? _self.thumbnailUri
          : thumbnailUri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Geo {
  String? get longitude;
  String? get latitude;

  /// Create a copy of Geo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeoCopyWith<Geo> get copyWith =>
      _$GeoCopyWithImpl<Geo>(this as Geo, _$identity);

  /// Serializes this Geo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Geo &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, longitude, latitude);

  @override
  String toString() {
    return 'Geo(longitude: $longitude, latitude: $latitude)';
  }
}

/// @nodoc
abstract mixin class $GeoCopyWith<$Res> {
  factory $GeoCopyWith(Geo value, $Res Function(Geo) _then) = _$GeoCopyWithImpl;
  @useResult
  $Res call({String? longitude, String? latitude});
}

/// @nodoc
class _$GeoCopyWithImpl<$Res> implements $GeoCopyWith<$Res> {
  _$GeoCopyWithImpl(this._self, this._then);

  final Geo _self;
  final $Res Function(Geo) _then;

  /// Create a copy of Geo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_self.copyWith(
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Geo implements Geo {
  const _Geo({this.longitude, this.latitude});
  factory _Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  @override
  final String? longitude;
  @override
  final String? latitude;

  /// Create a copy of Geo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeoCopyWith<_Geo> get copyWith =>
      __$GeoCopyWithImpl<_Geo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GeoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Geo &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, longitude, latitude);

  @override
  String toString() {
    return 'Geo(longitude: $longitude, latitude: $latitude)';
  }
}

/// @nodoc
abstract mixin class _$GeoCopyWith<$Res> implements $GeoCopyWith<$Res> {
  factory _$GeoCopyWith(_Geo value, $Res Function(_Geo) _then) =
      __$GeoCopyWithImpl;
  @override
  @useResult
  $Res call({String? longitude, String? latitude});
}

/// @nodoc
class __$GeoCopyWithImpl<$Res> implements _$GeoCopyWith<$Res> {
  __$GeoCopyWithImpl(this._self, this._then);

  final _Geo _self;
  final $Res Function(_Geo) _then;

  /// Create a copy of Geo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_Geo(
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$FileClass {
  String? get uri;
  String? get fileName;
  int? get size;

  /// Create a copy of FileClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FileClassCopyWith<FileClass> get copyWith =>
      _$FileClassCopyWithImpl<FileClass>(this as FileClass, _$identity);

  /// Serializes this FileClass to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileClass &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, fileName, size);

  @override
  String toString() {
    return 'FileClass(uri: $uri, fileName: $fileName, size: $size)';
  }
}

/// @nodoc
abstract mixin class $FileClassCopyWith<$Res> {
  factory $FileClassCopyWith(FileClass value, $Res Function(FileClass) _then) =
      _$FileClassCopyWithImpl;
  @useResult
  $Res call({String? uri, String? fileName, int? size});
}

/// @nodoc
class _$FileClassCopyWithImpl<$Res> implements $FileClassCopyWith<$Res> {
  _$FileClassCopyWithImpl(this._self, this._then);

  final FileClass _self;
  final $Res Function(FileClass) _then;

  /// Create a copy of FileClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? fileName = freezed,
    Object? size = freezed,
  }) {
    return _then(_self.copyWith(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FileClass implements FileClass {
  const _FileClass({this.uri, this.fileName, this.size});
  factory _FileClass.fromJson(Map<String, dynamic> json) =>
      _$FileClassFromJson(json);

  @override
  final String? uri;
  @override
  final String? fileName;
  @override
  final int? size;

  /// Create a copy of FileClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileClassCopyWith<_FileClass> get copyWith =>
      __$FileClassCopyWithImpl<_FileClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileClassToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileClass &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, fileName, size);

  @override
  String toString() {
    return 'FileClass(uri: $uri, fileName: $fileName, size: $size)';
  }
}

/// @nodoc
abstract mixin class _$FileClassCopyWith<$Res>
    implements $FileClassCopyWith<$Res> {
  factory _$FileClassCopyWith(
          _FileClass value, $Res Function(_FileClass) _then) =
      __$FileClassCopyWithImpl;
  @override
  @useResult
  $Res call({String? uri, String? fileName, int? size});
}

/// @nodoc
class __$FileClassCopyWithImpl<$Res> implements _$FileClassCopyWith<$Res> {
  __$FileClassCopyWithImpl(this._self, this._then);

  final _FileClass _self;
  final $Res Function(_FileClass) _then;

  /// Create a copy of FileClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uri = freezed,
    Object? fileName = freezed,
    Object? size = freezed,
  }) {
    return _then(_FileClass(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$WorkerTrans {
  String? get uri;
  String? get fileName;
  int? get size;

  /// Create a copy of WorkerTrans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkerTransCopyWith<WorkerTrans> get copyWith =>
      _$WorkerTransCopyWithImpl<WorkerTrans>(this as WorkerTrans, _$identity);

  /// Serializes this WorkerTrans to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkerTrans &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, fileName, size);

  @override
  String toString() {
    return 'WorkerTrans(uri: $uri, fileName: $fileName, size: $size)';
  }
}

/// @nodoc
abstract mixin class $WorkerTransCopyWith<$Res> {
  factory $WorkerTransCopyWith(
          WorkerTrans value, $Res Function(WorkerTrans) _then) =
      _$WorkerTransCopyWithImpl;
  @useResult
  $Res call({String? uri, String? fileName, int? size});
}

/// @nodoc
class _$WorkerTransCopyWithImpl<$Res> implements $WorkerTransCopyWith<$Res> {
  _$WorkerTransCopyWithImpl(this._self, this._then);

  final WorkerTrans _self;
  final $Res Function(WorkerTrans) _then;

  /// Create a copy of WorkerTrans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? fileName = freezed,
    Object? size = freezed,
  }) {
    return _then(_self.copyWith(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WorkerTrans implements WorkerTrans {
  const _WorkerTrans({this.uri, this.fileName, this.size});
  factory _WorkerTrans.fromJson(Map<String, dynamic> json) =>
      _$WorkerTransFromJson(json);

  @override
  final String? uri;
  @override
  final String? fileName;
  @override
  final int? size;

  /// Create a copy of WorkerTrans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkerTransCopyWith<_WorkerTrans> get copyWith =>
      __$WorkerTransCopyWithImpl<_WorkerTrans>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkerTransToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkerTrans &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri, fileName, size);

  @override
  String toString() {
    return 'WorkerTrans(uri: $uri, fileName: $fileName, size: $size)';
  }
}

/// @nodoc
abstract mixin class _$WorkerTransCopyWith<$Res>
    implements $WorkerTransCopyWith<$Res> {
  factory _$WorkerTransCopyWith(
          _WorkerTrans value, $Res Function(_WorkerTrans) _then) =
      __$WorkerTransCopyWithImpl;
  @override
  @useResult
  $Res call({String? uri, String? fileName, int? size});
}

/// @nodoc
class __$WorkerTransCopyWithImpl<$Res> implements _$WorkerTransCopyWith<$Res> {
  __$WorkerTransCopyWithImpl(this._self, this._then);

  final _WorkerTrans _self;
  final $Res Function(_WorkerTrans) _then;

  /// Create a copy of WorkerTrans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uri = freezed,
    Object? fileName = freezed,
    Object? size = freezed,
  }) {
    return _then(_WorkerTrans(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$Blacklist {
  int? get workerId;

  /// Create a copy of Blacklist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BlacklistCopyWith<Blacklist> get copyWith =>
      _$BlacklistCopyWithImpl<Blacklist>(this as Blacklist, _$identity);

  /// Serializes this Blacklist to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Blacklist &&
            (identical(other.workerId, workerId) ||
                other.workerId == workerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, workerId);

  @override
  String toString() {
    return 'Blacklist(workerId: $workerId)';
  }
}

/// @nodoc
abstract mixin class $BlacklistCopyWith<$Res> {
  factory $BlacklistCopyWith(Blacklist value, $Res Function(Blacklist) _then) =
      _$BlacklistCopyWithImpl;
  @useResult
  $Res call({int? workerId});
}

/// @nodoc
class _$BlacklistCopyWithImpl<$Res> implements $BlacklistCopyWith<$Res> {
  _$BlacklistCopyWithImpl(this._self, this._then);

  final Blacklist _self;
  final $Res Function(Blacklist) _then;

  /// Create a copy of Blacklist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workerId = freezed,
  }) {
    return _then(_self.copyWith(
      workerId: freezed == workerId
          ? _self.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Blacklist implements Blacklist {
  const _Blacklist({this.workerId});
  factory _Blacklist.fromJson(Map<String, dynamic> json) =>
      _$BlacklistFromJson(json);

  @override
  final int? workerId;

  /// Create a copy of Blacklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BlacklistCopyWith<_Blacklist> get copyWith =>
      __$BlacklistCopyWithImpl<_Blacklist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BlacklistToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Blacklist &&
            (identical(other.workerId, workerId) ||
                other.workerId == workerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, workerId);

  @override
  String toString() {
    return 'Blacklist(workerId: $workerId)';
  }
}

/// @nodoc
abstract mixin class _$BlacklistCopyWith<$Res>
    implements $BlacklistCopyWith<$Res> {
  factory _$BlacklistCopyWith(
          _Blacklist value, $Res Function(_Blacklist) _then) =
      __$BlacklistCopyWithImpl;
  @override
  @useResult
  $Res call({int? workerId});
}

/// @nodoc
class __$BlacklistCopyWithImpl<$Res> implements _$BlacklistCopyWith<$Res> {
  __$BlacklistCopyWithImpl(this._self, this._then);

  final _Blacklist _self;
  final $Res Function(_Blacklist) _then;

  /// Create a copy of Blacklist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? workerId = freezed,
  }) {
    return _then(_Blacklist(
      workerId: freezed == workerId
          ? _self.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$AutoReply {
  String? get id;
  String? get title;
  int? get delaySec;
  List<Qa>? get qa;

  /// Create a copy of AutoReply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AutoReplyCopyWith<AutoReply> get copyWith =>
      _$AutoReplyCopyWithImpl<AutoReply>(this as AutoReply, _$identity);

  /// Serializes this AutoReply to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoReply &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.delaySec, delaySec) ||
                other.delaySec == delaySec) &&
            const DeepCollectionEquality().equals(other.qa, qa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, delaySec,
      const DeepCollectionEquality().hash(qa));

  @override
  String toString() {
    return 'AutoReply(id: $id, title: $title, delaySec: $delaySec, qa: $qa)';
  }
}

/// @nodoc
abstract mixin class $AutoReplyCopyWith<$Res> {
  factory $AutoReplyCopyWith(AutoReply value, $Res Function(AutoReply) _then) =
      _$AutoReplyCopyWithImpl;
  @useResult
  $Res call({String? id, String? title, int? delaySec, List<Qa>? qa});
}

/// @nodoc
class _$AutoReplyCopyWithImpl<$Res> implements $AutoReplyCopyWith<$Res> {
  _$AutoReplyCopyWithImpl(this._self, this._then);

  final AutoReply _self;
  final $Res Function(AutoReply) _then;

  /// Create a copy of AutoReply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? delaySec = freezed,
    Object? qa = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      delaySec: freezed == delaySec
          ? _self.delaySec
          : delaySec // ignore: cast_nullable_to_non_nullable
              as int?,
      qa: freezed == qa
          ? _self.qa
          : qa // ignore: cast_nullable_to_non_nullable
              as List<Qa>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AutoReply implements AutoReply {
  const _AutoReply({this.id, this.title, this.delaySec, final List<Qa>? qa})
      : _qa = qa;
  factory _AutoReply.fromJson(Map<String, dynamic> json) =>
      _$AutoReplyFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final int? delaySec;
  final List<Qa>? _qa;
  @override
  List<Qa>? get qa {
    final value = _qa;
    if (value == null) return null;
    if (_qa is EqualUnmodifiableListView) return _qa;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of AutoReply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AutoReplyCopyWith<_AutoReply> get copyWith =>
      __$AutoReplyCopyWithImpl<_AutoReply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AutoReplyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoReply &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.delaySec, delaySec) ||
                other.delaySec == delaySec) &&
            const DeepCollectionEquality().equals(other._qa, _qa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, delaySec,
      const DeepCollectionEquality().hash(_qa));

  @override
  String toString() {
    return 'AutoReply(id: $id, title: $title, delaySec: $delaySec, qa: $qa)';
  }
}

/// @nodoc
abstract mixin class _$AutoReplyCopyWith<$Res>
    implements $AutoReplyCopyWith<$Res> {
  factory _$AutoReplyCopyWith(
          _AutoReply value, $Res Function(_AutoReply) _then) =
      __$AutoReplyCopyWithImpl;
  @override
  @useResult
  $Res call({String? id, String? title, int? delaySec, List<Qa>? qa});
}

/// @nodoc
class __$AutoReplyCopyWithImpl<$Res> implements _$AutoReplyCopyWith<$Res> {
  __$AutoReplyCopyWithImpl(this._self, this._then);

  final _AutoReply _self;
  final $Res Function(_AutoReply) _then;

  /// Create a copy of AutoReply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? delaySec = freezed,
    Object? qa = freezed,
  }) {
    return _then(_AutoReply(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      delaySec: freezed == delaySec
          ? _self.delaySec
          : delaySec // ignore: cast_nullable_to_non_nullable
              as int?,
      qa: freezed == qa
          ? _self._qa
          : qa // ignore: cast_nullable_to_non_nullable
              as List<Qa>?,
    ));
  }
}

/// @nodoc
mixin _$WorkerChanged {
  String? get workerClientId;
  int? get workerId;
  String? get name;
  String? get avatar;
  String? get greeting;
  String? get state;
  String? get consultId;

  /// Create a copy of WorkerChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkerChangedCopyWith<WorkerChanged> get copyWith =>
      _$WorkerChangedCopyWithImpl<WorkerChanged>(
          this as WorkerChanged, _$identity);

  /// Serializes this WorkerChanged to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkerChanged &&
            (identical(other.workerClientId, workerClientId) ||
                other.workerClientId == workerClientId) &&
            (identical(other.workerId, workerId) ||
                other.workerId == workerId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.greeting, greeting) ||
                other.greeting == greeting) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.consultId, consultId) ||
                other.consultId == consultId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, workerClientId, workerId, name,
      avatar, greeting, state, consultId);

  @override
  String toString() {
    return 'WorkerChanged(workerClientId: $workerClientId, workerId: $workerId, name: $name, avatar: $avatar, greeting: $greeting, state: $state, consultId: $consultId)';
  }
}

/// @nodoc
abstract mixin class $WorkerChangedCopyWith<$Res> {
  factory $WorkerChangedCopyWith(
          WorkerChanged value, $Res Function(WorkerChanged) _then) =
      _$WorkerChangedCopyWithImpl;
  @useResult
  $Res call(
      {String? workerClientId,
      int? workerId,
      String? name,
      String? avatar,
      String? greeting,
      String? state,
      String? consultId});
}

/// @nodoc
class _$WorkerChangedCopyWithImpl<$Res>
    implements $WorkerChangedCopyWith<$Res> {
  _$WorkerChangedCopyWithImpl(this._self, this._then);

  final WorkerChanged _self;
  final $Res Function(WorkerChanged) _then;

  /// Create a copy of WorkerChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workerClientId = freezed,
    Object? workerId = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? greeting = freezed,
    Object? state = freezed,
    Object? consultId = freezed,
  }) {
    return _then(_self.copyWith(
      workerClientId: freezed == workerClientId
          ? _self.workerClientId
          : workerClientId // ignore: cast_nullable_to_non_nullable
              as String?,
      workerId: freezed == workerId
          ? _self.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      greeting: freezed == greeting
          ? _self.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      consultId: freezed == consultId
          ? _self.consultId
          : consultId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WorkerChanged implements WorkerChanged {
  const _WorkerChanged(
      {this.workerClientId,
      this.workerId,
      this.name,
      this.avatar,
      this.greeting,
      this.state,
      this.consultId});
  factory _WorkerChanged.fromJson(Map<String, dynamic> json) =>
      _$WorkerChangedFromJson(json);

  @override
  final String? workerClientId;
  @override
  final int? workerId;
  @override
  final String? name;
  @override
  final String? avatar;
  @override
  final String? greeting;
  @override
  final String? state;
  @override
  final String? consultId;

  /// Create a copy of WorkerChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkerChangedCopyWith<_WorkerChanged> get copyWith =>
      __$WorkerChangedCopyWithImpl<_WorkerChanged>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkerChangedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkerChanged &&
            (identical(other.workerClientId, workerClientId) ||
                other.workerClientId == workerClientId) &&
            (identical(other.workerId, workerId) ||
                other.workerId == workerId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.greeting, greeting) ||
                other.greeting == greeting) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.consultId, consultId) ||
                other.consultId == consultId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, workerClientId, workerId, name,
      avatar, greeting, state, consultId);

  @override
  String toString() {
    return 'WorkerChanged(workerClientId: $workerClientId, workerId: $workerId, name: $name, avatar: $avatar, greeting: $greeting, state: $state, consultId: $consultId)';
  }
}

/// @nodoc
abstract mixin class _$WorkerChangedCopyWith<$Res>
    implements $WorkerChangedCopyWith<$Res> {
  factory _$WorkerChangedCopyWith(
          _WorkerChanged value, $Res Function(_WorkerChanged) _then) =
      __$WorkerChangedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? workerClientId,
      int? workerId,
      String? name,
      String? avatar,
      String? greeting,
      String? state,
      String? consultId});
}

/// @nodoc
class __$WorkerChangedCopyWithImpl<$Res>
    implements _$WorkerChangedCopyWith<$Res> {
  __$WorkerChangedCopyWithImpl(this._self, this._then);

  final _WorkerChanged _self;
  final $Res Function(_WorkerChanged) _then;

  /// Create a copy of WorkerChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? workerClientId = freezed,
    Object? workerId = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? greeting = freezed,
    Object? state = freezed,
    Object? consultId = freezed,
  }) {
    return _then(_WorkerChanged(
      workerClientId: freezed == workerClientId
          ? _self.workerClientId
          : workerClientId // ignore: cast_nullable_to_non_nullable
              as String?,
      workerId: freezed == workerId
          ? _self.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      greeting: freezed == greeting
          ? _self.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      consultId: freezed == consultId
          ? _self.consultId
          : consultId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$WithAutoReplyMessage {
  String? get id;
  String? get title;
  String? get createdTime;
  List<Answer>? get answers;

  /// Create a copy of WithAutoReplyMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WithAutoReplyMessageCopyWith<WithAutoReplyMessage> get copyWith =>
      _$WithAutoReplyMessageCopyWithImpl<WithAutoReplyMessage>(
          this as WithAutoReplyMessage, _$identity);

  /// Serializes this WithAutoReplyMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WithAutoReplyMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            const DeepCollectionEquality().equals(other.answers, answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, createdTime,
      const DeepCollectionEquality().hash(answers));

  @override
  String toString() {
    return 'WithAutoReplyMessage(id: $id, title: $title, createdTime: $createdTime, answers: $answers)';
  }
}

/// @nodoc
abstract mixin class $WithAutoReplyMessageCopyWith<$Res> {
  factory $WithAutoReplyMessageCopyWith(WithAutoReplyMessage value,
          $Res Function(WithAutoReplyMessage) _then) =
      _$WithAutoReplyMessageCopyWithImpl;
  @useResult
  $Res call(
      {String? id, String? title, String? createdTime, List<Answer>? answers});
}

/// @nodoc
class _$WithAutoReplyMessageCopyWithImpl<$Res>
    implements $WithAutoReplyMessageCopyWith<$Res> {
  _$WithAutoReplyMessageCopyWithImpl(this._self, this._then);

  final WithAutoReplyMessage _self;
  final $Res Function(WithAutoReplyMessage) _then;

  /// Create a copy of WithAutoReplyMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? createdTime = freezed,
    Object? answers = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _self.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: freezed == answers
          ? _self.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WithAutoReplyMessage implements WithAutoReplyMessage {
  const _WithAutoReplyMessage(
      {this.id, this.title, this.createdTime, final List<Answer>? answers})
      : _answers = answers;
  factory _WithAutoReplyMessage.fromJson(Map<String, dynamic> json) =>
      _$WithAutoReplyMessageFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? createdTime;
  final List<Answer>? _answers;
  @override
  List<Answer>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of WithAutoReplyMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WithAutoReplyMessageCopyWith<_WithAutoReplyMessage> get copyWith =>
      __$WithAutoReplyMessageCopyWithImpl<_WithAutoReplyMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WithAutoReplyMessageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithAutoReplyMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, createdTime,
      const DeepCollectionEquality().hash(_answers));

  @override
  String toString() {
    return 'WithAutoReplyMessage(id: $id, title: $title, createdTime: $createdTime, answers: $answers)';
  }
}

/// @nodoc
abstract mixin class _$WithAutoReplyMessageCopyWith<$Res>
    implements $WithAutoReplyMessageCopyWith<$Res> {
  factory _$WithAutoReplyMessageCopyWith(_WithAutoReplyMessage value,
          $Res Function(_WithAutoReplyMessage) _then) =
      __$WithAutoReplyMessageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id, String? title, String? createdTime, List<Answer>? answers});
}

/// @nodoc
class __$WithAutoReplyMessageCopyWithImpl<$Res>
    implements _$WithAutoReplyMessageCopyWith<$Res> {
  __$WithAutoReplyMessageCopyWithImpl(this._self, this._then);

  final _WithAutoReplyMessage _self;
  final $Res Function(_WithAutoReplyMessage) _then;

  /// Create a copy of WithAutoReplyMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? createdTime = freezed,
    Object? answers = freezed,
  }) {
    return _then(_WithAutoReplyMessage(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTime: freezed == createdTime
          ? _self.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as String?,
      answers: freezed == answers
          ? _self._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ));
  }
}

/// @nodoc
mixin _$Answer {
  Content? get content;
  Media? get image;
  Media? get audio;
  Media? get video;
  Geo? get geo;
  FileClass? get file;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnswerCopyWith<Answer> get copyWith =>
      _$AnswerCopyWithImpl<Answer>(this as Answer, _$identity);

  /// Serializes this Answer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Answer &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.geo, geo) || other.geo == geo) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, image, audio, video, geo, file);

  @override
  String toString() {
    return 'Answer(content: $content, image: $image, audio: $audio, video: $video, geo: $geo, file: $file)';
  }
}

/// @nodoc
abstract mixin class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) _then) =
      _$AnswerCopyWithImpl;
  @useResult
  $Res call(
      {Content? content,
      Media? image,
      Media? audio,
      Media? video,
      Geo? geo,
      FileClass? file});

  $ContentCopyWith<$Res>? get content;
  $MediaCopyWith<$Res>? get image;
  $MediaCopyWith<$Res>? get audio;
  $MediaCopyWith<$Res>? get video;
  $GeoCopyWith<$Res>? get geo;
  $FileClassCopyWith<$Res>? get file;
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res> implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._self, this._then);

  final Answer _self;
  final $Res Function(Answer) _then;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? image = freezed,
    Object? audio = freezed,
    Object? video = freezed,
    Object? geo = freezed,
    Object? file = freezed,
  }) {
    return _then(_self.copyWith(
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as Media?,
      audio: freezed == audio
          ? _self.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Media?,
      video: freezed == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as Media?,
      geo: freezed == geo
          ? _self.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo?,
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileClass?,
    ));
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_self.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_self.content!, (value) {
      return _then(_self.copyWith(content: value));
    });
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get image {
    if (_self.image == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.image!, (value) {
      return _then(_self.copyWith(image: value));
    });
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get audio {
    if (_self.audio == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.audio!, (value) {
      return _then(_self.copyWith(audio: value));
    });
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get video {
    if (_self.video == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.video!, (value) {
      return _then(_self.copyWith(video: value));
    });
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoCopyWith<$Res>? get geo {
    if (_self.geo == null) {
      return null;
    }

    return $GeoCopyWith<$Res>(_self.geo!, (value) {
      return _then(_self.copyWith(geo: value));
    });
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileClassCopyWith<$Res>? get file {
    if (_self.file == null) {
      return null;
    }

    return $FileClassCopyWith<$Res>(_self.file!, (value) {
      return _then(_self.copyWith(file: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Answer implements Answer {
  const _Answer(
      {this.content, this.image, this.audio, this.video, this.geo, this.file});
  factory _Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  @override
  final Content? content;
  @override
  final Media? image;
  @override
  final Media? audio;
  @override
  final Media? video;
  @override
  final Geo? geo;
  @override
  final FileClass? file;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnswerCopyWith<_Answer> get copyWith =>
      __$AnswerCopyWithImpl<_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnswerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Answer &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.geo, geo) || other.geo == geo) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, image, audio, video, geo, file);

  @override
  String toString() {
    return 'Answer(content: $content, image: $image, audio: $audio, video: $video, geo: $geo, file: $file)';
  }
}

/// @nodoc
abstract mixin class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) _then) =
      __$AnswerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Content? content,
      Media? image,
      Media? audio,
      Media? video,
      Geo? geo,
      FileClass? file});

  @override
  $ContentCopyWith<$Res>? get content;
  @override
  $MediaCopyWith<$Res>? get image;
  @override
  $MediaCopyWith<$Res>? get audio;
  @override
  $MediaCopyWith<$Res>? get video;
  @override
  $GeoCopyWith<$Res>? get geo;
  @override
  $FileClassCopyWith<$Res>? get file;
}

/// @nodoc
class __$AnswerCopyWithImpl<$Res> implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(this._self, this._then);

  final _Answer _self;
  final $Res Function(_Answer) _then;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = freezed,
    Object? image = freezed,
    Object? audio = freezed,
    Object? video = freezed,
    Object? geo = freezed,
    Object? file = freezed,
  }) {
    return _then(_Answer(
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as Media?,
      audio: freezed == audio
          ? _self.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Media?,
      video: freezed == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as Media?,
      geo: freezed == geo
          ? _self.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as Geo?,
      file: freezed == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as FileClass?,
    ));
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_self.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_self.content!, (value) {
      return _then(_self.copyWith(content: value));
    });
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get image {
    if (_self.image == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.image!, (value) {
      return _then(_self.copyWith(image: value));
    });
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get audio {
    if (_self.audio == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.audio!, (value) {
      return _then(_self.copyWith(audio: value));
    });
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaCopyWith<$Res>? get video {
    if (_self.video == null) {
      return null;
    }

    return $MediaCopyWith<$Res>(_self.video!, (value) {
      return _then(_self.copyWith(video: value));
    });
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoCopyWith<$Res>? get geo {
    if (_self.geo == null) {
      return null;
    }

    return $GeoCopyWith<$Res>(_self.geo!, (value) {
      return _then(_self.copyWith(geo: value));
    });
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileClassCopyWith<$Res>? get file {
    if (_self.file == null) {
      return null;
    }

    return $FileClassCopyWith<$Res>(_self.file!, (value) {
      return _then(_self.copyWith(file: value));
    });
  }
}

// dart format on
