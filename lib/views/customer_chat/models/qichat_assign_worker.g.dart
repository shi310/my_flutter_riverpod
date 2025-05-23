// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qichat_assign_worker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QiChatAssignWorkerModel _$QiChatAssignWorkerModelFromJson(
        Map<String, dynamic> json) =>
    _QiChatAssignWorkerModel(
      nick: json['nick'] as String?,
      avatar: json['avatar'] as String?,
      workerId: (json['workerId'] as num?)?.toInt(),
      nimid: json['nimid'] as String?,
      tips: json['tips'] as String?,
      chatId: json['chatId'] as String?,
    );

Map<String, dynamic> _$QiChatAssignWorkerModelToJson(
        _QiChatAssignWorkerModel instance) =>
    <String, dynamic>{
      'nick': instance.nick,
      'avatar': instance.avatar,
      'workerId': instance.workerId,
      'nimid': instance.nimid,
      'tips': instance.tips,
      'chatId': instance.chatId,
    };
