import 'package:freezed_annotation/freezed_annotation.dart';

part 'qichat_auto_reply.freezed.dart';
part 'qichat_auto_reply.g.dart';

/// 自动回复
@freezed
abstract class QiChatAutoReplyModel with _$QiChatAutoReplyModel {
  const factory QiChatAutoReplyModel({
    AutoReplyItemModel? autoReplyItem,
    String? createTime,
  }) = _QiChatAutoReplyModel;

  factory QiChatAutoReplyModel.fromJson(Map<String, dynamic> json) => _$QiChatAutoReplyModelFromJson(json);
}

/// 自动回复相关的详情
@freezed
abstract class AutoReplyItemModel with _$AutoReplyItemModel {
  const factory AutoReplyItemModel({
    String? id,
    String? name,
    String? title,
    List<Qa>? qa,
    List<int>? workerId,
    List<String>? workerNames,
  }) = _AutoReplyItemModel;

  factory AutoReplyItemModel.fromJson(Map<String, dynamic> json) => _$AutoReplyItemModelFromJson(json);
}

/// 自动回复的问题
@freezed
abstract class Qa with _$Qa {
  const factory Qa({
    int? id,
    Question? question,
    String? content,
    List<Question>? answer,
    List<Qa>? related,
  }) = _Qa;

  factory Qa.fromJson(Map<String, dynamic> json) => _$QaFromJson(json);
}

/// 问题
@freezed
abstract class Question with _$Question {
  const factory Question({
    String? chatId,
    String? msgId,
    String? msgTime,
    String? sender,
    String? replyMsgId,
    String? msgOp,
    int? worker,
    String? autoReplyFlag,
    String? msgFmt,
    String? consultId,
    List<dynamic>? withAutoReplies,
    String? msgSourceType,
    String? payloadId,
    Content? content,
    ImageUrl? image,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
}

/// 内容
@freezed
abstract class Content with _$Content {
  const factory Content({
    String? data,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);
}

/// 图片
@freezed
abstract class ImageUrl with _$ImageUrl {
  const factory ImageUrl({
    String? uri,
  }) = _ImageUrl;

  factory ImageUrl.fromJson(Map<String, dynamic> json) => _$ImageUrlFromJson(json);
}