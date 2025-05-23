part of '../view.dart';

// 验证码登陆
Future<void> _loginForCode({
  required String validate,
  required String phone,
  required String verificationCode,
  required BuildContext context,
  required bool isRememberPassword,
  required String account,
}) async {
  showMyLoading();
  final myDio = Global.to.providerContainer.read(myDioForAppNotifierProvider);

  await myDio?.post<UserInfoModel>(ApiPath.base.phoneLogin,
      onSuccess: (code, msg, data) async {
        // Global.to.userInfo = data;
        Global.to.providerContainer.read(userInfoNotifierProvider.notifier).set(data);

        // 保存手机号码
        if (isRememberPassword) {
          MyCache.putFile(MyConfig.shard.phoneKey, phone.aesEncrypt(MyConfig.key.aesKey),
            time: const Duration(days: 365),
          );
        } else {
          MyCache.removeFile(MyConfig.shard.phoneKey);
        }

        _goHomeView(context);
      },
      onModel: (json) => UserInfoModel.fromJson(json),
      data: {
        "phone": phone,
        "verificationCode": verificationCode,
        'validate': validate,
      },
      onError: (response) async {
        showResponseError(response);
      }
  );

  hideMyLoading();
}