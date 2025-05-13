// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfoModel {
  User? get user;
  String? get token;
  int? get expiresAt;
  String? get balance;
  String? get frozenBalance;
  String? get lockBalance;
  String? get buyRate;
  String? get walletAddress;
  int? get createAt;

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserInfoModelCopyWith<UserInfoModel> get copyWith =>
      _$UserInfoModelCopyWithImpl<UserInfoModel>(
          this as UserInfoModel, _$identity);

  /// Serializes this UserInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserInfoModel &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.frozenBalance, frozenBalance) ||
                other.frozenBalance == frozenBalance) &&
            (identical(other.lockBalance, lockBalance) ||
                other.lockBalance == lockBalance) &&
            (identical(other.buyRate, buyRate) || other.buyRate == buyRate) &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, token, expiresAt, balance,
      frozenBalance, lockBalance, buyRate, walletAddress, createAt);

  @override
  String toString() {
    return 'UserInfoModel(user: $user, token: $token, expiresAt: $expiresAt, balance: $balance, frozenBalance: $frozenBalance, lockBalance: $lockBalance, buyRate: $buyRate, walletAddress: $walletAddress, createAt: $createAt)';
  }
}

/// @nodoc
abstract mixin class $UserInfoModelCopyWith<$Res> {
  factory $UserInfoModelCopyWith(
          UserInfoModel value, $Res Function(UserInfoModel) _then) =
      _$UserInfoModelCopyWithImpl;
  @useResult
  $Res call(
      {User? user,
      String? token,
      int? expiresAt,
      String? balance,
      String? frozenBalance,
      String? lockBalance,
      String? buyRate,
      String? walletAddress,
      int? createAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._self, this._then);

  final UserInfoModel _self;
  final $Res Function(UserInfoModel) _then;

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
    Object? expiresAt = freezed,
    Object? balance = freezed,
    Object? frozenBalance = freezed,
    Object? lockBalance = freezed,
    Object? buyRate = freezed,
    Object? walletAddress = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      frozenBalance: freezed == frozenBalance
          ? _self.frozenBalance
          : frozenBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      lockBalance: freezed == lockBalance
          ? _self.lockBalance
          : lockBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      buyRate: freezed == buyRate
          ? _self.buyRate
          : buyRate // ignore: cast_nullable_to_non_nullable
              as String?,
      walletAddress: freezed == walletAddress
          ? _self.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _self.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UserInfoModel implements UserInfoModel {
  const _UserInfoModel(
      {this.user,
      this.token,
      this.expiresAt,
      this.balance,
      this.frozenBalance,
      this.lockBalance,
      this.buyRate,
      this.walletAddress,
      this.createAt});
  factory _UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);

  @override
  final User? user;
  @override
  final String? token;
  @override
  final int? expiresAt;
  @override
  final String? balance;
  @override
  final String? frozenBalance;
  @override
  final String? lockBalance;
  @override
  final String? buyRate;
  @override
  final String? walletAddress;
  @override
  final int? createAt;

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserInfoModelCopyWith<_UserInfoModel> get copyWith =>
      __$UserInfoModelCopyWithImpl<_UserInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserInfoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInfoModel &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.frozenBalance, frozenBalance) ||
                other.frozenBalance == frozenBalance) &&
            (identical(other.lockBalance, lockBalance) ||
                other.lockBalance == lockBalance) &&
            (identical(other.buyRate, buyRate) || other.buyRate == buyRate) &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, token, expiresAt, balance,
      frozenBalance, lockBalance, buyRate, walletAddress, createAt);

  @override
  String toString() {
    return 'UserInfoModel(user: $user, token: $token, expiresAt: $expiresAt, balance: $balance, frozenBalance: $frozenBalance, lockBalance: $lockBalance, buyRate: $buyRate, walletAddress: $walletAddress, createAt: $createAt)';
  }
}

/// @nodoc
abstract mixin class _$UserInfoModelCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$UserInfoModelCopyWith(
          _UserInfoModel value, $Res Function(_UserInfoModel) _then) =
      __$UserInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {User? user,
      String? token,
      int? expiresAt,
      String? balance,
      String? frozenBalance,
      String? lockBalance,
      String? buyRate,
      String? walletAddress,
      int? createAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$UserInfoModelCopyWithImpl<$Res>
    implements _$UserInfoModelCopyWith<$Res> {
  __$UserInfoModelCopyWithImpl(this._self, this._then);

  final _UserInfoModel _self;
  final $Res Function(_UserInfoModel) _then;

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
    Object? expiresAt = freezed,
    Object? balance = freezed,
    Object? frozenBalance = freezed,
    Object? lockBalance = freezed,
    Object? buyRate = freezed,
    Object? walletAddress = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_UserInfoModel(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: freezed == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String?,
      frozenBalance: freezed == frozenBalance
          ? _self.frozenBalance
          : frozenBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      lockBalance: freezed == lockBalance
          ? _self.lockBalance
          : lockBalance // ignore: cast_nullable_to_non_nullable
              as String?,
      buyRate: freezed == buyRate
          ? _self.buyRate
          : buyRate // ignore: cast_nullable_to_non_nullable
              as String?,
      walletAddress: freezed == walletAddress
          ? _self.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _self.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of UserInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
mixin _$User {
  int? get id;
  String? get username;
  String? get phone;
  String? get realName;
  String? get nickName;
  String? get avatarUrl;
  int? get enable;
  int? get isAuth;
  int? get lastTime;
  String? get lastAt;
  String? get lastIp;
  String? get totalBuyOrder;
  String? get totalSaleOrder;
  String? get totalSwap;
  int? get enableTransfer;
  String? get identityId;
  String? get identityFront;
  String? get identityBack;
  String? get registerDeviceNo;
  String? get loginDeviceNo;
  String? get riskMessage;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth) &&
            (identical(other.lastTime, lastTime) ||
                other.lastTime == lastTime) &&
            (identical(other.lastAt, lastAt) || other.lastAt == lastAt) &&
            (identical(other.lastIp, lastIp) || other.lastIp == lastIp) &&
            (identical(other.totalBuyOrder, totalBuyOrder) ||
                other.totalBuyOrder == totalBuyOrder) &&
            (identical(other.totalSaleOrder, totalSaleOrder) ||
                other.totalSaleOrder == totalSaleOrder) &&
            (identical(other.totalSwap, totalSwap) ||
                other.totalSwap == totalSwap) &&
            (identical(other.enableTransfer, enableTransfer) ||
                other.enableTransfer == enableTransfer) &&
            (identical(other.identityId, identityId) ||
                other.identityId == identityId) &&
            (identical(other.identityFront, identityFront) ||
                other.identityFront == identityFront) &&
            (identical(other.identityBack, identityBack) ||
                other.identityBack == identityBack) &&
            (identical(other.registerDeviceNo, registerDeviceNo) ||
                other.registerDeviceNo == registerDeviceNo) &&
            (identical(other.loginDeviceNo, loginDeviceNo) ||
                other.loginDeviceNo == loginDeviceNo) &&
            (identical(other.riskMessage, riskMessage) ||
                other.riskMessage == riskMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        username,
        phone,
        realName,
        nickName,
        avatarUrl,
        enable,
        isAuth,
        lastTime,
        lastAt,
        lastIp,
        totalBuyOrder,
        totalSaleOrder,
        totalSwap,
        enableTransfer,
        identityId,
        identityFront,
        identityBack,
        registerDeviceNo,
        loginDeviceNo,
        riskMessage
      ]);

  @override
  String toString() {
    return 'User(id: $id, username: $username, phone: $phone, realName: $realName, nickName: $nickName, avatarUrl: $avatarUrl, enable: $enable, isAuth: $isAuth, lastTime: $lastTime, lastAt: $lastAt, lastIp: $lastIp, totalBuyOrder: $totalBuyOrder, totalSaleOrder: $totalSaleOrder, totalSwap: $totalSwap, enableTransfer: $enableTransfer, identityId: $identityId, identityFront: $identityFront, identityBack: $identityBack, registerDeviceNo: $registerDeviceNo, loginDeviceNo: $loginDeviceNo, riskMessage: $riskMessage)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? phone,
      String? realName,
      String? nickName,
      String? avatarUrl,
      int? enable,
      int? isAuth,
      int? lastTime,
      String? lastAt,
      String? lastIp,
      String? totalBuyOrder,
      String? totalSaleOrder,
      String? totalSwap,
      int? enableTransfer,
      String? identityId,
      String? identityFront,
      String? identityBack,
      String? registerDeviceNo,
      String? loginDeviceNo,
      String? riskMessage});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? realName = freezed,
    Object? nickName = freezed,
    Object? avatarUrl = freezed,
    Object? enable = freezed,
    Object? isAuth = freezed,
    Object? lastTime = freezed,
    Object? lastAt = freezed,
    Object? lastIp = freezed,
    Object? totalBuyOrder = freezed,
    Object? totalSaleOrder = freezed,
    Object? totalSwap = freezed,
    Object? enableTransfer = freezed,
    Object? identityId = freezed,
    Object? identityFront = freezed,
    Object? identityBack = freezed,
    Object? registerDeviceNo = freezed,
    Object? loginDeviceNo = freezed,
    Object? riskMessage = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      realName: freezed == realName
          ? _self.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      enable: freezed == enable
          ? _self.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as int?,
      isAuth: freezed == isAuth
          ? _self.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as int?,
      lastTime: freezed == lastTime
          ? _self.lastTime
          : lastTime // ignore: cast_nullable_to_non_nullable
              as int?,
      lastAt: freezed == lastAt
          ? _self.lastAt
          : lastAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastIp: freezed == lastIp
          ? _self.lastIp
          : lastIp // ignore: cast_nullable_to_non_nullable
              as String?,
      totalBuyOrder: freezed == totalBuyOrder
          ? _self.totalBuyOrder
          : totalBuyOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSaleOrder: freezed == totalSaleOrder
          ? _self.totalSaleOrder
          : totalSaleOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSwap: freezed == totalSwap
          ? _self.totalSwap
          : totalSwap // ignore: cast_nullable_to_non_nullable
              as String?,
      enableTransfer: freezed == enableTransfer
          ? _self.enableTransfer
          : enableTransfer // ignore: cast_nullable_to_non_nullable
              as int?,
      identityId: freezed == identityId
          ? _self.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String?,
      identityFront: freezed == identityFront
          ? _self.identityFront
          : identityFront // ignore: cast_nullable_to_non_nullable
              as String?,
      identityBack: freezed == identityBack
          ? _self.identityBack
          : identityBack // ignore: cast_nullable_to_non_nullable
              as String?,
      registerDeviceNo: freezed == registerDeviceNo
          ? _self.registerDeviceNo
          : registerDeviceNo // ignore: cast_nullable_to_non_nullable
              as String?,
      loginDeviceNo: freezed == loginDeviceNo
          ? _self.loginDeviceNo
          : loginDeviceNo // ignore: cast_nullable_to_non_nullable
              as String?,
      riskMessage: freezed == riskMessage
          ? _self.riskMessage
          : riskMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _User implements User {
  const _User(
      {this.id,
      this.username,
      this.phone,
      this.realName,
      this.nickName,
      this.avatarUrl,
      this.enable,
      this.isAuth,
      this.lastTime,
      this.lastAt,
      this.lastIp,
      this.totalBuyOrder,
      this.totalSaleOrder,
      this.totalSwap,
      this.enableTransfer,
      this.identityId,
      this.identityFront,
      this.identityBack,
      this.registerDeviceNo,
      this.loginDeviceNo,
      this.riskMessage});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? phone;
  @override
  final String? realName;
  @override
  final String? nickName;
  @override
  final String? avatarUrl;
  @override
  final int? enable;
  @override
  final int? isAuth;
  @override
  final int? lastTime;
  @override
  final String? lastAt;
  @override
  final String? lastIp;
  @override
  final String? totalBuyOrder;
  @override
  final String? totalSaleOrder;
  @override
  final String? totalSwap;
  @override
  final int? enableTransfer;
  @override
  final String? identityId;
  @override
  final String? identityFront;
  @override
  final String? identityBack;
  @override
  final String? registerDeviceNo;
  @override
  final String? loginDeviceNo;
  @override
  final String? riskMessage;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth) &&
            (identical(other.lastTime, lastTime) ||
                other.lastTime == lastTime) &&
            (identical(other.lastAt, lastAt) || other.lastAt == lastAt) &&
            (identical(other.lastIp, lastIp) || other.lastIp == lastIp) &&
            (identical(other.totalBuyOrder, totalBuyOrder) ||
                other.totalBuyOrder == totalBuyOrder) &&
            (identical(other.totalSaleOrder, totalSaleOrder) ||
                other.totalSaleOrder == totalSaleOrder) &&
            (identical(other.totalSwap, totalSwap) ||
                other.totalSwap == totalSwap) &&
            (identical(other.enableTransfer, enableTransfer) ||
                other.enableTransfer == enableTransfer) &&
            (identical(other.identityId, identityId) ||
                other.identityId == identityId) &&
            (identical(other.identityFront, identityFront) ||
                other.identityFront == identityFront) &&
            (identical(other.identityBack, identityBack) ||
                other.identityBack == identityBack) &&
            (identical(other.registerDeviceNo, registerDeviceNo) ||
                other.registerDeviceNo == registerDeviceNo) &&
            (identical(other.loginDeviceNo, loginDeviceNo) ||
                other.loginDeviceNo == loginDeviceNo) &&
            (identical(other.riskMessage, riskMessage) ||
                other.riskMessage == riskMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        username,
        phone,
        realName,
        nickName,
        avatarUrl,
        enable,
        isAuth,
        lastTime,
        lastAt,
        lastIp,
        totalBuyOrder,
        totalSaleOrder,
        totalSwap,
        enableTransfer,
        identityId,
        identityFront,
        identityBack,
        registerDeviceNo,
        loginDeviceNo,
        riskMessage
      ]);

  @override
  String toString() {
    return 'User(id: $id, username: $username, phone: $phone, realName: $realName, nickName: $nickName, avatarUrl: $avatarUrl, enable: $enable, isAuth: $isAuth, lastTime: $lastTime, lastAt: $lastAt, lastIp: $lastIp, totalBuyOrder: $totalBuyOrder, totalSaleOrder: $totalSaleOrder, totalSwap: $totalSwap, enableTransfer: $enableTransfer, identityId: $identityId, identityFront: $identityFront, identityBack: $identityBack, registerDeviceNo: $registerDeviceNo, loginDeviceNo: $loginDeviceNo, riskMessage: $riskMessage)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? phone,
      String? realName,
      String? nickName,
      String? avatarUrl,
      int? enable,
      int? isAuth,
      int? lastTime,
      String? lastAt,
      String? lastIp,
      String? totalBuyOrder,
      String? totalSaleOrder,
      String? totalSwap,
      int? enableTransfer,
      String? identityId,
      String? identityFront,
      String? identityBack,
      String? registerDeviceNo,
      String? loginDeviceNo,
      String? riskMessage});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? phone = freezed,
    Object? realName = freezed,
    Object? nickName = freezed,
    Object? avatarUrl = freezed,
    Object? enable = freezed,
    Object? isAuth = freezed,
    Object? lastTime = freezed,
    Object? lastAt = freezed,
    Object? lastIp = freezed,
    Object? totalBuyOrder = freezed,
    Object? totalSaleOrder = freezed,
    Object? totalSwap = freezed,
    Object? enableTransfer = freezed,
    Object? identityId = freezed,
    Object? identityFront = freezed,
    Object? identityBack = freezed,
    Object? registerDeviceNo = freezed,
    Object? loginDeviceNo = freezed,
    Object? riskMessage = freezed,
  }) {
    return _then(_User(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      realName: freezed == realName
          ? _self.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _self.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      enable: freezed == enable
          ? _self.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as int?,
      isAuth: freezed == isAuth
          ? _self.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as int?,
      lastTime: freezed == lastTime
          ? _self.lastTime
          : lastTime // ignore: cast_nullable_to_non_nullable
              as int?,
      lastAt: freezed == lastAt
          ? _self.lastAt
          : lastAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastIp: freezed == lastIp
          ? _self.lastIp
          : lastIp // ignore: cast_nullable_to_non_nullable
              as String?,
      totalBuyOrder: freezed == totalBuyOrder
          ? _self.totalBuyOrder
          : totalBuyOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSaleOrder: freezed == totalSaleOrder
          ? _self.totalSaleOrder
          : totalSaleOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSwap: freezed == totalSwap
          ? _self.totalSwap
          : totalSwap // ignore: cast_nullable_to_non_nullable
              as String?,
      enableTransfer: freezed == enableTransfer
          ? _self.enableTransfer
          : enableTransfer // ignore: cast_nullable_to_non_nullable
              as int?,
      identityId: freezed == identityId
          ? _self.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String?,
      identityFront: freezed == identityFront
          ? _self.identityFront
          : identityFront // ignore: cast_nullable_to_non_nullable
              as String?,
      identityBack: freezed == identityBack
          ? _self.identityBack
          : identityBack // ignore: cast_nullable_to_non_nullable
              as String?,
      registerDeviceNo: freezed == registerDeviceNo
          ? _self.registerDeviceNo
          : registerDeviceNo // ignore: cast_nullable_to_non_nullable
              as String?,
      loginDeviceNo: freezed == loginDeviceNo
          ? _self.loginDeviceNo
          : loginDeviceNo // ignore: cast_nullable_to_non_nullable
              as String?,
      riskMessage: freezed == riskMessage
          ? _self.riskMessage
          : riskMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
