part of '../view.dart';

// 验证码登陆
Future<void> _loginForCode({
  required String validate,
  required String phone,
  required String verificationCode,
  required WidgetRef ref,
  required String account,
}) async {
  showMyLoading();

  await Global.to.myDio?.post<UserInfoModel>(ApiPath.base.phoneLogin,
      onSuccess: (code, msg, data) async {
        Global.to.userInfo = data;

        // 保存手机号码
        if (ref.read(loginViewRememberPasswordNotifierProvider)) {
          MyCache.putFile(MyConfig.shard.phoneKey, phone.aesEncrypt(MyConfig.key.aesKey),
            time: const Duration(days: 365),
          );
        } else {
          MyCache.removeFile(MyConfig.shard.phoneKey);
        }

        _goHomeView(ref.context);
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