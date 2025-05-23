import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_entrance.freezed.dart';
part 'query_entrance.g.dart';

/// 入口
@freezed
abstract class QueryEntranceModel with _$QueryEntranceModel {
  const factory QueryEntranceModel({
    String? name,
    String? nick,
    String? avatar,
    String? guide,
    int? defaultConsultId,
    String? changeDefaultTime,
    List<Consult>? consults,
  }) = _QueryEntranceModel;

  factory QueryEntranceModel.fromJson(Map<String, dynamic> json) => _$QueryEntranceModelFromJson(json);
}

@freezed
abstract class Consult with _$Consult {
  const factory Consult({
    int? consultId,
    String? name,
    String? guide,
    List<Work>? works,
    int? unread,
    int? priority,
  }) = _Consult;

  factory Consult.fromJson(Map<String, dynamic> json) => _$ConsultFromJson(json);
}

@freezed
abstract class Work with _$Work {
  const factory Work({
    String? nick,
    String? avatar,
    int? workerId,
    String? nimId,
    String? connectState,
    String? onlineState,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}