import '../../global.dart';
import '../../public/public.dart';
import '../common.dart';

// 保存用户信息
void saveUserInfo() {
  MyCache.putFile(MyConfig.shard.userInfo,Global.to.userInfo.toJson().toJsonString().aesEncrypt(MyConfig.key.aesKey),
    time: const Duration(days: 5),
  );
}

// 移除用户信息
void removeUserInfo() {
  MyCache.removeFile(MyConfig.shard.userInfo);
}