part of '../view.dart';

// 密码登陆
Future<void> _loginForPassword({
  required String validate,
  required String username,
  required String password,
  required WidgetRef ref,
  required String account,
}) async {
  showMyLoading();
  await Global.to.myDio?.post<UserInfoModel>(ApiPath.base.accountLogin,
      onSuccess: (code, msg, data) async {
        Global.to.userInfo = data;

        // 是否保存账号信息
        if (ref.read(loginViewRememberPasswordNotifierProvider)) {
          MyCache.putFile(MyConfig.shard.accountKey, account.aesEncrypt(MyConfig.key.aesKey),
            time: const Duration(days: 365),
          );
        } else {
          MyCache.removeFile(MyConfig.shard.accountKey);
        }

        _goHomeView(ref.context);
      },
      onModel: (json) => UserInfoModel.fromJson(json),
      data: {
        "username": username,
        "password": password.aesEncrypt(MyConfig.key.aesKey),
        'validate': validate,
      },
      onError: (response) async {
        showResponseError(response);
      }
  );
  hideMyLoading();
}