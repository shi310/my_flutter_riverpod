import '../../global.dart';
import '../../public/utils/utils.dart';
import '../common.dart';

// 初始化APP数据
Future<void> initAppData() async {
  await Future.wait([
    _getIsUsedApp(),
    _getUserToken(),
  ]);
}

// 获取是否使用过APP
Future<void> _getIsUsedApp() async {
  final file = await MyCache.getFile(MyConfig.shard.isUsedAppKey);
  if (file != null) {
    String crypto = await file.readAsString();
    final string= crypto.aesDecrypt(MyConfig.key.aesKey);
    Global.to.isUsedApp = string;
  }
}

// 获取用户token
Future<void> _getUserToken() async {
  final file = await MyCache.getFile(MyConfig.shard.userInfo);
  if (file != null) {
    String crypto = await file.readAsString();
    final string = crypto.aesDecrypt(MyConfig.key.aesKey);
    Global.to.userInfo = UserInfoModel.fromJson(string.toJson());
  }
}