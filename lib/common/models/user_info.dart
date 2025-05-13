import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
abstract class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    User? user,
    String? token,
    int? expiresAt,
    String? balance,
    String? frozenBalance,
    String? lockBalance,
    String? buyRate,
    String? walletAddress,
    int? createAt,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => _$UserInfoModelFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    int? id,
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
    String? riskMessage,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}