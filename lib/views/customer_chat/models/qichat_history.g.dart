// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qichat_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QiChatHistoryModel _$QiChatHistoryModelFromJson(Map<String, dynamic> json) =>
    _QiChatHistoryModel(
      request: json['request'] == null
          ? null
          : Request.fromJson(json['request'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => QichatInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMsgId: json['lastMsgId'] as String?,
      nick: json['nick'] as String?,
      replyList: (json['replyList'] as List<dynamic>?)
          ?.map((e) => QichatInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QiChatHistoryModelToJson(_QiChatHistoryModel instance) =>
    <String, dynamic>{
      'request': instance.request,
      'list': instance.list,
      'lastMsgId': instance.lastMsgId,
      'nick': instance.nick,
      'replyList': instance.replyList,
    };

_Request _$RequestFromJson(Map<String, dynamic> json) => _Request(
      chatId: json['chatId'] as String?,
      msgId: json['msgId'] as String?,
      count: (json['count'] as num?)?.toInt(),
      withLastOne: json['withLastOne'] as bool?,
      workerId: (json['workerId'] as num?)?.toInt(),
      consultId: (json['consultId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RequestToJson(_Request instance) => <String, dynamic>{
      'chatId': instance.chatId,
      'msgId': instance.msgId,
      'count': instance.count,
      'withLastOne': instance.withLastOne,
      'workerId': instance.workerId,
      'consultId': instance.consultId,
      'userId': instance.userId,
    };

_QichatInfoModel _$QichatInfoModelFromJson(Map<String, dynamic> json) =>
    _QichatInfoModel(
      chatId: json['chatId'] as String?,
      msgId: json['msgId'] as String?,
      msgTime: json['msgTime'] as String?,
      sender: json['sender'] as String?,
      replyMsgId: json['replyMsgId'] as String?,
      msgOp: json['msgOp'] as String?,
      worker: (json['worker'] as num?)?.toInt(),
      autoReplyFlag: json['autoReplyFlag'] == null
          ? null
          : AutoReplyFlag.fromJson(
              json['autoReplyFlag'] as Map<String, dynamic>),
      msgFmt: json['msgFmt'] as String?,
      consultId: json['consultId'] as String?,
      withAutoReplies: (json['withAutoReplies'] as List<dynamic>?)
          ?.map((e) => WithAutoReplyMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      msgSourceType: json['msgSourceType'] as String?,
      payloadId: json['payloadId'] as String?,
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : Media.fromJson(json['image'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? null
          : Media.fromJson(json['audio'] as Map<String, dynamic>),
      video: json['video'] == null
          ? null
          : Media.fromJson(json['video'] as Map<String, dynamic>),
      geo: json['geo'] == null
          ? null
          : Geo.fromJson(json['geo'] as Map<String, dynamic>),
      file: json['file'] == null
          ? null
          : FileClass.fromJson(json['file'] as Map<String, dynamic>),
      workerTrans: json['workerTrans'] == null
          ? null
          : WorkerTrans.fromJson(json['workerTrans'] as Map<String, dynamic>),
      blacklistApply: json['blacklistApply'] == null
          ? null
          : Blacklist.fromJson(json['blacklistApply'] as Map<String, dynamic>),
      blacklistConfirm: json['blacklistConfirm'] == null
          ? null
          : Blacklist.fromJson(
              json['blacklistConfirm'] as Map<String, dynamic>),
      autoReply: json['autoReply'] == null
          ? null
          : AutoReply.fromJson(json['autoReply'] as Map<String, dynamic>),
      workerChanged: json['workerChanged'] == null
          ? null
          : WorkerChanged.fromJson(
              json['workerChanged'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QichatInfoModelToJson(_QichatInfoModel instance) =>
    <String, dynamic>{
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
      'audio': instance.audio,
      'video': instance.video,
      'geo': instance.geo,
      'file': instance.file,
      'workerTrans': instance.workerTrans,
      'blacklistApply': instance.blacklistApply,
      'blacklistConfirm': instance.blacklistConfirm,
      'autoReply': instance.autoReply,
      'workerChanged': instance.workerChanged,
    };

_AutoReplyFlag _$AutoReplyFlagFromJson(Map<String, dynamic> json) =>
    _AutoReplyFlag(
      id: json['id'] as String?,
      qaId: (json['qaId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AutoReplyFlagToJson(_AutoReplyFlag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qaId': instance.qaId,
    };

_Media _$MediaFromJson(Map<String, dynamic> json) => _Media(
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$MediaToJson(_Media instance) => <String, dynamic>{
      'uri': instance.uri,
    };

_Geo _$GeoFromJson(Map<String, dynamic> json) => _Geo(
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
    );

Map<String, dynamic> _$GeoToJson(_Geo instance) => <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

_FileClass _$FileClassFromJson(Map<String, dynamic> json) => _FileClass(
      uri: json['uri'] as String?,
      fileName: json['fileName'] as String?,
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FileClassToJson(_FileClass instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'fileName': instance.fileName,
      'size': instance.size,
    };

_WorkerTrans _$WorkerTransFromJson(Map<String, dynamic> json) => _WorkerTrans(
      uri: json['uri'] as String?,
      fileName: json['fileName'] as String?,
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WorkerTransToJson(_WorkerTrans instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'fileName': instance.fileName,
      'size': instance.size,
    };

_Blacklist _$BlacklistFromJson(Map<String, dynamic> json) => _Blacklist(
      workerId: (json['workerId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BlacklistToJson(_Blacklist instance) =>
    <String, dynamic>{
      'workerId': instance.workerId,
    };

_AutoReply _$AutoReplyFromJson(Map<String, dynamic> json) => _AutoReply(
      id: json['id'] as String?,
      title: json['title'] as String?,
      delaySec: (json['delaySec'] as num?)?.toInt(),
      qa: (json['qa'] as List<dynamic>?)
          ?.map((e) => Qa.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AutoReplyToJson(_AutoReply instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'delaySec': instance.delaySec,
      'qa': instance.qa,
    };

_WorkerChanged _$WorkerChangedFromJson(Map<String, dynamic> json) =>
    _WorkerChanged(
      workerClientId: json['workerClientId'] as String?,
      workerId: (json['workerId'] as num?)?.toInt(),
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      greeting: json['greeting'] as String?,
      state: json['state'] as String?,
      consultId: json['consultId'] as String?,
    );

Map<String, dynamic> _$WorkerChangedToJson(_WorkerChanged instance) =>
    <String, dynamic>{
      'workerClientId': instance.workerClientId,
      'workerId': instance.workerId,
      'name': instance.name,
      'avatar': instance.avatar,
      'greeting': instance.greeting,
      'state': instance.state,
      'consultId': instance.consultId,
    };

_WithAutoReplyMessage _$WithAutoReplyMessageFromJson(
        Map<String, dynamic> json) =>
    _WithAutoReplyMessage(
      id: json['id'] as String?,
      title: json['title'] as String?,
      createdTime: json['createdTime'] as String?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WithAutoReplyMessageToJson(
        _WithAutoReplyMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdTime': instance.createdTime,
      'answers': instance.answers,
    };

_Answer _$AnswerFromJson(Map<String, dynamic> json) => _Answer(
      content: json['content'] == null
          ? null
          : Content.fromJson(json['content'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : Media.fromJson(json['image'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? null
          : Media.fromJson(json['audio'] as Map<String, dynamic>),
      video: json['video'] == null
          ? null
          : Media.fromJson(json['video'] as Map<String, dynamic>),
      geo: json['geo'] == null
          ? null
          : Geo.fromJson(json['geo'] as Map<String, dynamic>),
      file: json['file'] == null
          ? null
          : FileClass.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnswerToJson(_Answer instance) => <String, dynamic>{
      'content': instance.content,
      'image': instance.image,
      'audio': instance.audio,
      'video': instance.video,
      'geo': instance.geo,
      'file': instance.file,
    };
