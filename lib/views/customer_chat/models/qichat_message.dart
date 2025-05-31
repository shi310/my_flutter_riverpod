import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:qichatsdk_flutter/qichatsdk_flutter.dart';

import 'models.dart';

class QiChatMessageModel {
  String id;
  Int64 msgId;
  Int64 payloadId;
  String? content;
  String? url;
  String? path;
  MessageFormat messageFormat;
  QichatAlignType alignType;
  Int64 replyMsgId;
  Completer<Int64>? completer;
  String createTime;
  AutoReplyItemModel? autoReplyItem;

  QiChatMessageModel({
    required this.id,
    required this.msgId,
    required this.payloadId,
    required this.content,
    required this.url,
    required this.path,
    required this.messageFormat,
    required this.alignType,
    required this.replyMsgId,
    required this.completer,
    required this.createTime,
    required this.autoReplyItem,
  });

  QiChatMessageModel copyWith({
    Int64? msgId,
    Int64? payloadId,
    String? content,
    String? url,
    String? path,
    MessageFormat? messageFormat,
    QichatAlignType? alignType,
    Int64? replyMsgId,
    Completer<Int64>? completer,
    String? createTime,
    AutoReplyItemModel? autoReplyItem,
    String? id,
  }) {
    return QiChatMessageModel(
      msgId: msgId ?? this.msgId,
      payloadId: payloadId ?? this.payloadId,
      content: content ?? this.content,
      url: url ?? this.url,
      path: path ?? this.path,
      messageFormat: messageFormat ?? this.messageFormat,
      alignType: alignType ?? this.alignType,
      replyMsgId: replyMsgId ?? this.replyMsgId,
      completer: completer ?? this.completer,
      createTime: createTime ?? this.createTime,
      autoReplyItem: autoReplyItem ?? this.autoReplyItem,
      id: id ?? this.id,
    );
  }
}

enum QichatAlignType {
  left,
  right,
}