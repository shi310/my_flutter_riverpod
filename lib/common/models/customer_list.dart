import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_list.freezed.dart';
part 'customer_list.g.dart';

@freezed
abstract class CustomerModel with _$CustomerModel {
  const factory CustomerModel({
    int? chatId,
    String? chatUrl,
    int? status,
    String? urlImg,
    String? urlApi,
    String? sign,
    List<Customer>? customer,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);
}

@freezed
abstract class Customer with _$Customer {
  const factory Customer({
    required int customerServiceType,
    required String cret,
    required String remark,
    required String customerServiceAvatar,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}

@freezed
abstract class CustomerListViewArguments with _$CustomerListViewArguments {
  const factory CustomerListViewArguments({
    CustomerType? customerType,
    String? message,
  }) = _CustomerListViewArguments;

  factory CustomerListViewArguments.fromJson(Map<String, dynamic> json) => _$CustomerListViewArgumentsFromJson(json);
}

enum CustomerType {
  // 游客客服
  guest,
  // 用户客服
  user,
}

@freezed
abstract class CustomerChatViewArguments with _$CustomerChatViewArguments {
  const factory CustomerChatViewArguments({
    String? cret,
    String? message,
    String? apiUrl,
    String? imageUrl,
    String? avatarUrl,
    String? sign,
    int? tenantId,
    int? userId,
  }) = _CustomerChatViewArguments;

  factory CustomerChatViewArguments.fromJson(Map<String, dynamic> json) => _$CustomerChatViewArgumentsFromJson(json);
}
