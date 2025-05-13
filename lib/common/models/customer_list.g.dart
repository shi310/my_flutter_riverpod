// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    _CustomerModel(
      chatId: (json['chatId'] as num?)?.toInt(),
      chatUrl: json['chatUrl'] as String?,
      status: (json['status'] as num?)?.toInt(),
      urlImg: json['urlImg'] as String?,
      urlApi: json['urlApi'] as String?,
      sign: json['sign'] as String?,
      customer: (json['customer'] as List<dynamic>?)
          ?.map((e) => Customer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerModelToJson(_CustomerModel instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'chatUrl': instance.chatUrl,
      'status': instance.status,
      'urlImg': instance.urlImg,
      'urlApi': instance.urlApi,
      'sign': instance.sign,
      'customer': instance.customer,
    };

_Customer _$CustomerFromJson(Map<String, dynamic> json) => _Customer(
      customerServiceType: (json['customerServiceType'] as num).toInt(),
      cret: json['cret'] as String,
      remark: json['remark'] as String,
      customerServiceAvatar: json['customerServiceAvatar'] as String,
    );

Map<String, dynamic> _$CustomerToJson(_Customer instance) => <String, dynamic>{
      'customerServiceType': instance.customerServiceType,
      'cret': instance.cret,
      'remark': instance.remark,
      'customerServiceAvatar': instance.customerServiceAvatar,
    };

_CustomerListViewArguments _$CustomerListViewArgumentsFromJson(
        Map<String, dynamic> json) =>
    _CustomerListViewArguments(
      customerType:
          $enumDecodeNullable(_$CustomerTypeEnumMap, json['customerType']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CustomerListViewArgumentsToJson(
        _CustomerListViewArguments instance) =>
    <String, dynamic>{
      'customerType': _$CustomerTypeEnumMap[instance.customerType],
      'message': instance.message,
    };

const _$CustomerTypeEnumMap = {
  CustomerType.guest: 'guest',
  CustomerType.user: 'user',
};
