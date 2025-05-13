// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerModel {
  int? get chatId;
  String? get chatUrl;
  int? get status;
  String? get urlImg;
  String? get urlApi;
  String? get sign;
  List<Customer>? get customer;

  /// Create a copy of CustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerModelCopyWith<CustomerModel> get copyWith =>
      _$CustomerModelCopyWithImpl<CustomerModel>(
          this as CustomerModel, _$identity);

  /// Serializes this CustomerModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerModel &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.chatUrl, chatUrl) || other.chatUrl == chatUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.urlImg, urlImg) || other.urlImg == urlImg) &&
            (identical(other.urlApi, urlApi) || other.urlApi == urlApi) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            const DeepCollectionEquality().equals(other.customer, customer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chatId, chatUrl, status, urlImg,
      urlApi, sign, const DeepCollectionEquality().hash(customer));

  @override
  String toString() {
    return 'CustomerModel(chatId: $chatId, chatUrl: $chatUrl, status: $status, urlImg: $urlImg, urlApi: $urlApi, sign: $sign, customer: $customer)';
  }
}

/// @nodoc
abstract mixin class $CustomerModelCopyWith<$Res> {
  factory $CustomerModelCopyWith(
          CustomerModel value, $Res Function(CustomerModel) _then) =
      _$CustomerModelCopyWithImpl;
  @useResult
  $Res call(
      {int? chatId,
      String? chatUrl,
      int? status,
      String? urlImg,
      String? urlApi,
      String? sign,
      List<Customer>? customer});
}

/// @nodoc
class _$CustomerModelCopyWithImpl<$Res>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._self, this._then);

  final CustomerModel _self;
  final $Res Function(CustomerModel) _then;

  /// Create a copy of CustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? chatUrl = freezed,
    Object? status = freezed,
    Object? urlImg = freezed,
    Object? urlApi = freezed,
    Object? sign = freezed,
    Object? customer = freezed,
  }) {
    return _then(_self.copyWith(
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatUrl: freezed == chatUrl
          ? _self.chatUrl
          : chatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      urlImg: freezed == urlImg
          ? _self.urlImg
          : urlImg // ignore: cast_nullable_to_non_nullable
              as String?,
      urlApi: freezed == urlApi
          ? _self.urlApi
          : urlApi // ignore: cast_nullable_to_non_nullable
              as String?,
      sign: freezed == sign
          ? _self.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: freezed == customer
          ? _self.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as List<Customer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CustomerModel implements CustomerModel {
  const _CustomerModel(
      {this.chatId,
      this.chatUrl,
      this.status,
      this.urlImg,
      this.urlApi,
      this.sign,
      final List<Customer>? customer})
      : _customer = customer;
  factory _CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  @override
  final int? chatId;
  @override
  final String? chatUrl;
  @override
  final int? status;
  @override
  final String? urlImg;
  @override
  final String? urlApi;
  @override
  final String? sign;
  final List<Customer>? _customer;
  @override
  List<Customer>? get customer {
    final value = _customer;
    if (value == null) return null;
    if (_customer is EqualUnmodifiableListView) return _customer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerModelCopyWith<_CustomerModel> get copyWith =>
      __$CustomerModelCopyWithImpl<_CustomerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerModel &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.chatUrl, chatUrl) || other.chatUrl == chatUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.urlImg, urlImg) || other.urlImg == urlImg) &&
            (identical(other.urlApi, urlApi) || other.urlApi == urlApi) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            const DeepCollectionEquality().equals(other._customer, _customer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chatId, chatUrl, status, urlImg,
      urlApi, sign, const DeepCollectionEquality().hash(_customer));

  @override
  String toString() {
    return 'CustomerModel(chatId: $chatId, chatUrl: $chatUrl, status: $status, urlImg: $urlImg, urlApi: $urlApi, sign: $sign, customer: $customer)';
  }
}

/// @nodoc
abstract mixin class _$CustomerModelCopyWith<$Res>
    implements $CustomerModelCopyWith<$Res> {
  factory _$CustomerModelCopyWith(
          _CustomerModel value, $Res Function(_CustomerModel) _then) =
      __$CustomerModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? chatId,
      String? chatUrl,
      int? status,
      String? urlImg,
      String? urlApi,
      String? sign,
      List<Customer>? customer});
}

/// @nodoc
class __$CustomerModelCopyWithImpl<$Res>
    implements _$CustomerModelCopyWith<$Res> {
  __$CustomerModelCopyWithImpl(this._self, this._then);

  final _CustomerModel _self;
  final $Res Function(_CustomerModel) _then;

  /// Create a copy of CustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chatId = freezed,
    Object? chatUrl = freezed,
    Object? status = freezed,
    Object? urlImg = freezed,
    Object? urlApi = freezed,
    Object? sign = freezed,
    Object? customer = freezed,
  }) {
    return _then(_CustomerModel(
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatUrl: freezed == chatUrl
          ? _self.chatUrl
          : chatUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      urlImg: freezed == urlImg
          ? _self.urlImg
          : urlImg // ignore: cast_nullable_to_non_nullable
              as String?,
      urlApi: freezed == urlApi
          ? _self.urlApi
          : urlApi // ignore: cast_nullable_to_non_nullable
              as String?,
      sign: freezed == sign
          ? _self.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: freezed == customer
          ? _self._customer
          : customer // ignore: cast_nullable_to_non_nullable
              as List<Customer>?,
    ));
  }
}

/// @nodoc
mixin _$Customer {
  int get customerServiceType;
  String get cret;
  String get remark;
  String get customerServiceAvatar;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<Customer> get copyWith =>
      _$CustomerCopyWithImpl<Customer>(this as Customer, _$identity);

  /// Serializes this Customer to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Customer &&
            (identical(other.customerServiceType, customerServiceType) ||
                other.customerServiceType == customerServiceType) &&
            (identical(other.cret, cret) || other.cret == cret) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.customerServiceAvatar, customerServiceAvatar) ||
                other.customerServiceAvatar == customerServiceAvatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, customerServiceType, cret, remark, customerServiceAvatar);

  @override
  String toString() {
    return 'Customer(customerServiceType: $customerServiceType, cret: $cret, remark: $remark, customerServiceAvatar: $customerServiceAvatar)';
  }
}

/// @nodoc
abstract mixin class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) _then) =
      _$CustomerCopyWithImpl;
  @useResult
  $Res call(
      {int customerServiceType,
      String cret,
      String remark,
      String customerServiceAvatar});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._self, this._then);

  final Customer _self;
  final $Res Function(Customer) _then;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerServiceType = null,
    Object? cret = null,
    Object? remark = null,
    Object? customerServiceAvatar = null,
  }) {
    return _then(_self.copyWith(
      customerServiceType: null == customerServiceType
          ? _self.customerServiceType
          : customerServiceType // ignore: cast_nullable_to_non_nullable
              as int,
      cret: null == cret
          ? _self.cret
          : cret // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      customerServiceAvatar: null == customerServiceAvatar
          ? _self.customerServiceAvatar
          : customerServiceAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Customer implements Customer {
  const _Customer(
      {required this.customerServiceType,
      required this.cret,
      required this.remark,
      required this.customerServiceAvatar});
  factory _Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  @override
  final int customerServiceType;
  @override
  final String cret;
  @override
  final String remark;
  @override
  final String customerServiceAvatar;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerCopyWith<_Customer> get copyWith =>
      __$CustomerCopyWithImpl<_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Customer &&
            (identical(other.customerServiceType, customerServiceType) ||
                other.customerServiceType == customerServiceType) &&
            (identical(other.cret, cret) || other.cret == cret) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.customerServiceAvatar, customerServiceAvatar) ||
                other.customerServiceAvatar == customerServiceAvatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, customerServiceType, cret, remark, customerServiceAvatar);

  @override
  String toString() {
    return 'Customer(customerServiceType: $customerServiceType, cret: $cret, remark: $remark, customerServiceAvatar: $customerServiceAvatar)';
  }
}

/// @nodoc
abstract mixin class _$CustomerCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) _then) =
      __$CustomerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int customerServiceType,
      String cret,
      String remark,
      String customerServiceAvatar});
}

/// @nodoc
class __$CustomerCopyWithImpl<$Res> implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(this._self, this._then);

  final _Customer _self;
  final $Res Function(_Customer) _then;

  /// Create a copy of Customer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerServiceType = null,
    Object? cret = null,
    Object? remark = null,
    Object? customerServiceAvatar = null,
  }) {
    return _then(_Customer(
      customerServiceType: null == customerServiceType
          ? _self.customerServiceType
          : customerServiceType // ignore: cast_nullable_to_non_nullable
              as int,
      cret: null == cret
          ? _self.cret
          : cret // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _self.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      customerServiceAvatar: null == customerServiceAvatar
          ? _self.customerServiceAvatar
          : customerServiceAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$CustomerListViewArguments {
  CustomerType? get customerType;
  String? get message;

  /// Create a copy of CustomerListViewArguments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerListViewArgumentsCopyWith<CustomerListViewArguments> get copyWith =>
      _$CustomerListViewArgumentsCopyWithImpl<CustomerListViewArguments>(
          this as CustomerListViewArguments, _$identity);

  /// Serializes this CustomerListViewArguments to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerListViewArguments &&
            (identical(other.customerType, customerType) ||
                other.customerType == customerType) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerType, message);

  @override
  String toString() {
    return 'CustomerListViewArguments(customerType: $customerType, message: $message)';
  }
}

/// @nodoc
abstract mixin class $CustomerListViewArgumentsCopyWith<$Res> {
  factory $CustomerListViewArgumentsCopyWith(CustomerListViewArguments value,
          $Res Function(CustomerListViewArguments) _then) =
      _$CustomerListViewArgumentsCopyWithImpl;
  @useResult
  $Res call({CustomerType? customerType, String? message});
}

/// @nodoc
class _$CustomerListViewArgumentsCopyWithImpl<$Res>
    implements $CustomerListViewArgumentsCopyWith<$Res> {
  _$CustomerListViewArgumentsCopyWithImpl(this._self, this._then);

  final CustomerListViewArguments _self;
  final $Res Function(CustomerListViewArguments) _then;

  /// Create a copy of CustomerListViewArguments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerType = freezed,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      customerType: freezed == customerType
          ? _self.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as CustomerType?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CustomerListViewArguments implements CustomerListViewArguments {
  const _CustomerListViewArguments({this.customerType, this.message});
  factory _CustomerListViewArguments.fromJson(Map<String, dynamic> json) =>
      _$CustomerListViewArgumentsFromJson(json);

  @override
  final CustomerType? customerType;
  @override
  final String? message;

  /// Create a copy of CustomerListViewArguments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerListViewArgumentsCopyWith<_CustomerListViewArguments>
      get copyWith =>
          __$CustomerListViewArgumentsCopyWithImpl<_CustomerListViewArguments>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerListViewArgumentsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerListViewArguments &&
            (identical(other.customerType, customerType) ||
                other.customerType == customerType) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerType, message);

  @override
  String toString() {
    return 'CustomerListViewArguments(customerType: $customerType, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$CustomerListViewArgumentsCopyWith<$Res>
    implements $CustomerListViewArgumentsCopyWith<$Res> {
  factory _$CustomerListViewArgumentsCopyWith(_CustomerListViewArguments value,
          $Res Function(_CustomerListViewArguments) _then) =
      __$CustomerListViewArgumentsCopyWithImpl;
  @override
  @useResult
  $Res call({CustomerType? customerType, String? message});
}

/// @nodoc
class __$CustomerListViewArgumentsCopyWithImpl<$Res>
    implements _$CustomerListViewArgumentsCopyWith<$Res> {
  __$CustomerListViewArgumentsCopyWithImpl(this._self, this._then);

  final _CustomerListViewArguments _self;
  final $Res Function(_CustomerListViewArguments) _then;

  /// Create a copy of CustomerListViewArguments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? customerType = freezed,
    Object? message = freezed,
  }) {
    return _then(_CustomerListViewArguments(
      customerType: freezed == customerType
          ? _self.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as CustomerType?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
