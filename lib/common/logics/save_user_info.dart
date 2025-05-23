import '../../global.dart';
import '../../public/public.dart';
import '../common.dart';

// 保存用户信息
void saveUserInfo() {
  final data = Global.to.providerContainer.read(userInfoNotifierProvider);
  MyCache.putFile(MyConfig.shard.userInfo,data.toJson().toJsonString().aesEncrypt(MyConfig.key.aesKey),
    time: const Duration(days: 5),
  );
}

// 移除用户信息
void removeUserInfo() {
  MyCache.removeFile(MyConfig.shard.userInfo);
}