import 'package:my_flutter_basic/common/common.dart';

import '../../public/utils/my_cache.dart';


Future<void> initLanguage() async {
  // 初始化语言
  final localeCache = await MyCache.getFile(MyConfig.shard.localKey);
  final localTag = await localeCache?.readAsString();
  GlobalController.to.localTag = localTag;
}