part of '../view.dart';

// 用户注册
Future<void> _register({
  required String username,
  required String phone,
  required String password,
  required String rePassword,
  required String verificationCode,
  required WidgetRef ref
}) async {
  showMyLoading();

  await Global.to.myDio?.post<UserInfoModel>(ApiPath.base.register,
      onSuccess: (code, msg, data) async {
        Global.to.userInfo = data;
        // 告诉 openInstall 注册成功
        // 用于 openInstall 统计注册
        Global.to.openInstallFlutterPlugin?.reportRegister();
        _goHomeView(ref.context);
      },
      onModel: (json) => UserInfoModel.fromJson(json),
      data: {
        'username': username,
        'phone': phone,
        'password': password.aesEncrypt(MyConfig.key.aesKey),
        'rePassword': rePassword.aesEncrypt(MyConfig.key.aesKey),
        'verificationCode': verificationCode,
      },
      onError: (response) async {
        showResponseError(response);
      }
  );

  hideMyLoading();
}