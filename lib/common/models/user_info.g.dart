// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    _UserInfoModel(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
      balance: json['balance'] as String?,
      frozenBalance: json['frozenBalance'] as String?,
      lockBalance: json['lockBalance'] as String?,
      buyRate: json['buyRate'] as String?,
      walletAddress: json['walletAddress'] as String?,
      createAt: (json['createAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserInfoModelToJson(_UserInfoModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'expiresAt': instance.expiresAt,
      'balance': instance.balance,
      'frozenBalance': instance.frozenBalance,
      'lockBalance': instance.lockBalance,
      'buyRate': instance.buyRate,
      'walletAddress': instance.walletAddress,
      'createAt': instance.createAt,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      phone: json['phone'] as String?,
      realName: json['realName'] as String?,
      nickName: json['nickName'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      enable: (json['enable'] as num?)?.toInt(),
      isAuth: (json['isAuth'] as num?)?.toInt(),
      lastTime: (json['lastTime'] as num?)?.toInt(),
      lastAt: json['lastAt'] as String?,
      lastIp: json['lastIp'] as String?,
      totalBuyOrder: json['totalBuyOrder'] as String?,
      totalSaleOrder: json['totalSaleOrder'] as String?,
      totalSwap: json['totalSwap'] as String?,
      enableTransfer: (json['enableTransfer'] as num?)?.toInt(),
      identityId: json['identityId'] as String?,
      identityFront: json['identityFront'] as String?,
      identityBack: json['identityBack'] as String?,
      registerDeviceNo: json['registerDeviceNo'] as String?,
      loginDeviceNo: json['loginDeviceNo'] as String?,
      riskMessage: json['riskMessage'] as String?,
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'phone': instance.phone,
      'realName': instance.realName,
      'nickName': instance.nickName,
      'avatarUrl': instance.avatarUrl,
      'enable': instance.enable,
      'isAuth': instance.isAuth,
      'lastTime': instance.lastTime,
      'lastAt': instance.lastAt,
      'lastIp': instance.lastIp,
      'totalBuyOrder': instance.totalBuyOrder,
      'totalSaleOrder': instance.totalSaleOrder,
      'totalSwap': instance.totalSwap,
      'enableTransfer': instance.enableTransfer,
      'identityId': instance.identityId,
      'identityFront': instance.identityFront,
      'identityBack': instance.identityBack,
      'registerDeviceNo': instance.registerDeviceNo,
      'loginDeviceNo': instance.loginDeviceNo,
      'riskMessage': instance.riskMessage,
    };
