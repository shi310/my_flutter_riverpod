// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_entrance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QueryEntranceModel _$QueryEntranceModelFromJson(Map<String, dynamic> json) =>
    _QueryEntranceModel(
      name: json['name'] as String?,
      nick: json['nick'] as String?,
      avatar: json['avatar'] as String?,
      guide: json['guide'] as String?,
      defaultConsultId: (json['defaultConsultId'] as num?)?.toInt(),
      changeDefaultTime: json['changeDefaultTime'] as String?,
      consults: (json['consults'] as List<dynamic>?)
          ?.map((e) => Consult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QueryEntranceModelToJson(_QueryEntranceModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nick': instance.nick,
      'avatar': instance.avatar,
      'guide': instance.guide,
      'defaultConsultId': instance.defaultConsultId,
      'changeDefaultTime': instance.changeDefaultTime,
      'consults': instance.consults,
    };

_Consult _$ConsultFromJson(Map<String, dynamic> json) => _Consult(
      consultId: (json['consultId'] as num?)?.toInt(),
      name: json['name'] as String?,
      guide: json['guide'] as String?,
      works: (json['works'] as List<dynamic>?)
          ?.map((e) => Work.fromJson(e as Map<String, dynamic>))
          .toList(),
      unread: (json['unread'] as num?)?.toInt(),
      priority: (json['priority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ConsultToJson(_Consult instance) => <String, dynamic>{
      'consultId': instance.consultId,
      'name': instance.name,
      'guide': instance.guide,
      'works': instance.works,
      'unread': instance.unread,
      'priority': instance.priority,
    };

_Work _$WorkFromJson(Map<String, dynamic> json) => _Work(
      nick: json['nick'] as String?,
      avatar: json['avatar'] as String?,
      workerId: (json['workerId'] as num?)?.toInt(),
      nimId: json['nimId'] as String?,
      connectState: json['connectState'] as String?,
      onlineState: json['onlineState'] as String?,
    );

Map<String, dynamic> _$WorkToJson(_Work instance) => <String, dynamic>{
      'nick': instance.nick,
      'avatar': instance.avatar,
      'workerId': instance.workerId,
      'nimId': instance.nimId,
      'connectState': instance.connectState,
      'onlineState': instance.onlineState,
    };
