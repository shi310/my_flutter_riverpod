part of '../view.dart';

// 忘记密码的业务逻辑
// 请求接口啥的
Future<void> _forgotPassword({
  required void Function(SignState) onSuccess,
  required String phone,
  required String password,
  required String rePassword,
  required String verificationCode,
}) async {
  showMyLoading();
  final myDio = Global.to.providerContainer.read(myDioForAppNotifierProvider);
  await myDio?.post(ApiPath.base.forgetPassword,
      onSuccess: (code, msg, data) async {
        onSuccess.call(SignState.loginForPassword);
        MyAlert.showSnack(child: Text(msg));
      },
      data: {
        "phone": phone,
        "newPassword": password.aesEncrypt(MyConfig.key.aesKey),
        "reNewPassword": rePassword.aesEncrypt(MyConfig.key.aesKey),
        "verificationCode": verificationCode,
      },
      onError: (response) async {
        showResponseError(response);
      }
  );
  hideMyLoading();
}