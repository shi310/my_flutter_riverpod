// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qichat_auto_reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QiChatAutoReplyModel _$QiChatAutoReplyModelFromJson(
        Map<String, dynamic> json) =>
    _QiChatAutoReplyModel(
      autoReplyItem: json['autoReplyItem'] == null
          ? null
          : AutoReplyItemModel.fromJson(
              json['autoReplyItem'] as Map<String, dynamic>),
      workerId: (json['workerId'] as num?)?.toInt(),
      tenantId: (json['tenantId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QiChatAutoReplyModelToJson(
        _QiChatAutoReplyModel instance) =>
    <String, dynamic>{
      'autoReplyItem': instance.autoReplyItem,
      'workerId': instance.workerId,
      'tenantId': instance.tenantId,
    };

_AutoReplyItemModel _$AutoReplyItemModelFromJson(Map<String, dynamic> json) =>
    _AutoReplyItemModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      qa: (json['qa'] as List<dynamic>?)
          ?.map((e) => Qa.fromJson(e as Map<String, dynamic>))
          .toList(),
      delaySec: (json['delaySec'] as num?)?.toInt(),
      workerId: (json['workerId'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      workerNames: (json['workerNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AutoReplyItemModelToJson(_AutoReplyItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'name': instance.name,
      'qa': instance.qa,
      'delaySec': instance.delaySec,
      'workerId': instance.workerId,
      'workerNames': instance.workerNames,
    };

_Qa _$QaFromJson(Map<String, dynamic> json) => _Qa(
      id: (json['id'] as num?)?.toInt(),
      question: json['question'] == null
          ? null
          : Question.fromJson(json['question'] as Map<String, dynamic>),
      content: json['content'] as String?,
      answer: (json['answer'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      related: (json['related'] as List<dynamic>?)
          ?.map((e) => Qa.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QaToJson(_Qa instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'content': instance.content,
      'answer': instance.answer,
      'related': instance.related,
    };

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
      chatId: json['chatId'] as String?,
      msgId: json['msgId'] as String?,
      msgTime: json['msgTime'] as String?,
      sender: json['sender'] as String?,
      replyMsgId: json['replyMsgId'] as String?,
      msgOp: json['msgOp'] as String?,
      worker: (json['worker'] as num?)?.toInt(),
      autoReplyFlag: json['autoReplyFlag'] as String?,
      msgFmt: json['msgFmt'] as String?,
      consultId: json['consultId'] as String?,
      withAutoReplies: json['withAutoReplies'] as List<dynamic>?,
      msgSourceType: json['msgSourceType'] as String?,
      payloadId: json['payloadId'] as String?,
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : ImageUrl.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
      'chatId': instance.chatId,
      'msgId': instance.msgId,
      'msgTime': instance.msgTime,
      'sender': instance.sender,
      'replyMsgId': instance.replyMsgId,
      'msgOp': instance.msgOp,
      'worker': instance.worker,
      'autoReplyFlag': instance.autoReplyFlag,
      'msgFmt': instance.msgFmt,
      'consultId': instance.consultId,
      'withAutoReplies': instance.withAutoReplies,
      'msgSourceType': instance.msgSourceType,
      'payloadId': instance.payloadId,
      'content': instance.content,
      'image': instance.image,
    };

_Content _$ContentFromJson(Map<String, dynamic> json) => _Content(
      data: json['data'] as String?,
    );

Map<String, dynamic> _$ContentToJson(_Content instance) => <String, dynamic>{
      'data': instance.data,
    };

_ImageUrl _$ImageUrlFromJson(Map<String, dynamic> json) => _ImageUrl(
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$ImageUrlToJson(_ImageUrl instance) => <String, dynamic>{
      'uri': instance.uri,
    };
