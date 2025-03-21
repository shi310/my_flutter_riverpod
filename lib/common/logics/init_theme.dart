import 'package:my_flutter_basic/common/common.dart';

import '../../public/utils/my_cache.dart';

Future<void> initTheme() async {
  // 初始化主题
  final themeModeCache = await MyCache.getFile(MyConfig.shard.themeModeKey);
  final themeModeTag = await themeModeCache?.readAsString();
  GlobalController.to.themeModeTag = themeModeTag;
}