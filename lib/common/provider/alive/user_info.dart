import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../public/utils/my_logger.dart';
import '../../common.dart';

part 'user_info.g.dart';

// 用户信息: 缓存至APP退出
// 内置从接口刷新 和 手动修改
// 获取到数据后也会刷新全局Global的的静态变量userInfo
@Riverpod(keepAlive: true)
class UserInfoNotifier extends _$UserInfoNotifier {
  @override
  UserInfoModel build() {
    return UserInfoModel();
  }

  // 从接口刷新
  Future<void> fromServer() async {
    final myDio = ref.read(myDioForAppNotifierProvider);
    await myDio?.post<UserInfoModel>(ApiPath.base.getUserInfo,
      onSuccess: (code, msg, data) async {
        state = data;
        saveUserInfo();
      },
      onModel: (json) => UserInfoModel.fromJson(json),
      onConnectError: (e) async {
        MyLogger.w('错误信息: $e');
        throw e;
      },
    );
  }

  // 手动修改
  void set(UserInfoModel data) {
    state = data;
    saveUserInfo();
  }

  // 清空
  void clear() {
    state = UserInfoModel();
    removeUserInfo();
  }
}