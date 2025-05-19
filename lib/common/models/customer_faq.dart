import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_faq.freezed.dart';
part 'customer_faq.g.dart';

@freezed
abstract class CustomerFaqTypeListModel with _$CustomerFaqTypeListModel {
  const factory CustomerFaqTypeListModel({
    List<CustomerFaqTypeModel>? list,
  }) = _CustomerFaqTypeListModel;

  factory CustomerFaqTypeListModel.fromJson(Map<String, dynamic> json) => _$CustomerFaqTypeListModelFromJson(json);
}

@freezed
abstract class CustomerFaqTypeModel with _$CustomerFaqTypeModel {
  const factory CustomerFaqTypeModel({
    int? id,
    int? sort,
    String? categoryName,
  }) = _CustomerFaqTypeModel;

  factory CustomerFaqTypeModel.fromJson(Map<String, dynamic> json) => _$CustomerFaqTypeModelFromJson(json);
}

@freezed
abstract class CustomerFaqListModel with _$CustomerFaqListModel {
  const factory CustomerFaqListModel({
    List<CustomerFaqInfoModel>? list,
  }) = _CustomerFaqListModel;

  factory CustomerFaqListModel.fromJson(Map<String, dynamic> json) => _$CustomerFaqListModelFromJson(json);
}

@freezed
abstract class CustomerFaqInfoModel with _$CustomerFaqInfoModel {
  const factory CustomerFaqInfoModel({
    int? id,
    String? title,
    int? symbol,
    String? answer,
    String? picUrl,
    int? sort,
  }) = _CustomerFaqInfoModel;

  factory CustomerFaqInfoModel.fromJson(Map<String, dynamic> json) => _$CustomerFaqInfoModelFromJson(json);
}