// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_faq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerFaqTypeListModel _$CustomerFaqTypeListModelFromJson(
        Map<String, dynamic> json) =>
    _CustomerFaqTypeListModel(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => CustomerFaqTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerFaqTypeListModelToJson(
        _CustomerFaqTypeListModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_CustomerFaqTypeModel _$CustomerFaqTypeModelFromJson(
        Map<String, dynamic> json) =>
    _CustomerFaqTypeModel(
      id: (json['id'] as num?)?.toInt(),
      sort: (json['sort'] as num?)?.toInt(),
      categoryName: json['categoryName'] as String?,
    );

Map<String, dynamic> _$CustomerFaqTypeModelToJson(
        _CustomerFaqTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sort': instance.sort,
      'categoryName': instance.categoryName,
    };

_CustomerFaqListModel _$CustomerFaqListModelFromJson(
        Map<String, dynamic> json) =>
    _CustomerFaqListModel(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => CustomerFaqInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerFaqListModelToJson(
        _CustomerFaqListModel instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_CustomerFaqInfoModel _$CustomerFaqInfoModelFromJson(
        Map<String, dynamic> json) =>
    _CustomerFaqInfoModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      symbol: (json['symbol'] as num?)?.toInt(),
      answer: json['answer'] as String?,
      picUrl: json['picUrl'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CustomerFaqInfoModelToJson(
        _CustomerFaqInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'symbol': instance.symbol,
      'answer': instance.answer,
      'picUrl': instance.picUrl,
      'sort': instance.sort,
    };

_CombinedCustomerDataModel _$CombinedCustomerDataModelFromJson(
        Map<String, dynamic> json) =>
    _CombinedCustomerDataModel(
      customer: json['customer'] == null
          ? null
          : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
      faqTypeList: json['faqTypeList'] == null
          ? null
          : CustomerFaqTypeListModel.fromJson(
              json['faqTypeList'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CombinedCustomerDataModelToJson(
        _CombinedCustomerDataModel instance) =>
    <String, dynamic>{
      'customer': instance.customer,
      'faqTypeList': instance.faqTypeList,
    };
