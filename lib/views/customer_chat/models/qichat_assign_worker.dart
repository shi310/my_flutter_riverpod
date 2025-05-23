import 'package:freezed_annotation/freezed_annotation.dart';

part 'qichat_assign_worker.freezed.dart';
part 'qichat_assign_worker.g.dart';
/// 指派客服
@freezed
abstract class QiChatAssignWorkerModel with _$QiChatAssignWorkerModel {
  const factory QiChatAssignWorkerModel({
    String? nick,
    String? avatar,
    int? workerId,
    String? nimid,
    String? tips,
    String? chatId,
  }) = _QiChatAssignWorkerModel;

  factory QiChatAssignWorkerModel.fromJson(Map<String, dynamic> json) => _$QiChatAssignWorkerModelFromJson(json);
}