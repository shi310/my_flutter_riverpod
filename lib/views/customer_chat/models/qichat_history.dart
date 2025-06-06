import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'qichat_history.freezed.dart';
part 'qichat_history.g.dart';

/// 聊天记录
@freezed
abstract class QiChatHistoryModel with _$QiChatHistoryModel {
  const factory QiChatHistoryModel({
    Request? request,
    List<QichatInfoModel>? list,
    String? lastMsgId,
    String? nick,
    List<QichatInfoModel>? replyList,
  }) = _QiChatHistoryModel;

  factory QiChatHistoryModel.fromJson(Map<String, dynamic> json) => _$QiChatHistoryModelFromJson(json);
}

@freezed
abstract class Request with _$Request {
  const factory Request({
    String? chatId,
    String? msgId,
    int? count,
    bool? withLastOne,
    int? workerId,
    int? consultId,
    int? userId,
  }) = _Request;

  factory Request.fromJson(Map<String, dynamic> json) => _$RequestFromJson(json);
}

@freezed
abstract class QichatInfoModel with _$QichatInfoModel {
  const factory QichatInfoModel({
    String? chatId,
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
    WorkerChanged? workerChanged,
  }) = _QichatInfoModel;

  factory QichatInfoModel.fromJson(Map<String, dynamic> json) => _$QichatInfoModelFromJson(json);
}

@freezed
abstract class AutoReplyFlag with _$AutoReplyFlag {
  const factory AutoReplyFlag({
    String? id,
    int? qaId,
  }) = _AutoReplyFlag;

  factory AutoReplyFlag.fromJson(Map<String, dynamic> json) => _$AutoReplyFlagFromJson(json);
}

@freezed
abstract class Media with _$Media {
  const factory Media({
    String? uri,
    String? hlsUri,
    String? thumbnailUri,
  }) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@freezed
abstract class Geo with _$Geo {
  const factory Geo({
    String? longitude,
    String? latitude,
  }) = _Geo;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}

@freezed
abstract class FileClass with _$FileClass {
  const factory FileClass({
    String? uri,
    String? fileName,
    int? size,
  }) = _FileClass;

  factory FileClass.fromJson(Map<String, dynamic> json) => _$FileClassFromJson(json);
}

@freezed
abstract class WorkerTrans with _$WorkerTrans {
  const factory WorkerTrans({
    String? uri,
    String? fileName,
    int? size,
  }) = _WorkerTrans;

  factory WorkerTrans.fromJson(Map<String, dynamic> json) => _$WorkerTransFromJson(json);
}

@freezed
abstract class Blacklist with _$Blacklist {
  const factory Blacklist({
    int? workerId,
  }) = _Blacklist;

  factory Blacklist.fromJson(Map<String, dynamic> json) => _$BlacklistFromJson(json);
}

@freezed
abstract class AutoReply with _$AutoReply {
  const factory AutoReply({
    String? id,
    String? title,
    int? delaySec,
    List<Qa>? qa,
  }) = _AutoReply;

  factory AutoReply.fromJson(Map<String, dynamic> json) => _$AutoReplyFromJson(json);
}

@freezed
abstract class WorkerChanged with _$WorkerChanged {
  const factory WorkerChanged({
    String? workerClientId,
    int? workerId,
    String? name,
    String? avatar,
    String? greeting,
    String? state,
    String? consultId,
  }) = _WorkerChanged;

  factory WorkerChanged.fromJson(Map<String, dynamic> json) => _$WorkerChangedFromJson(json);
}

@freezed
abstract class WithAutoReplyMessage with _$WithAutoReplyMessage {
  const factory WithAutoReplyMessage({
    String? id,
    String? title,
    String? createdTime,
    List<Answer>? answers,
  }) = _WithAutoReplyMessage;

  factory WithAutoReplyMessage.fromJson(Map<String, dynamic> json) => _$WithAutoReplyMessageFromJson(json);
}

@freezed
abstract class Answer with _$Answer {
  const factory Answer({
    Content? content,
    Media? image,
    Media? audio,
    Media? video,
    Geo? geo,
    FileClass? file,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}