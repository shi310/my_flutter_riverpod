
import '../../global.dart';
import '../../public/utils/my_cache.dart';
import '../common.dart';


Future<void> initLanguage() async {
  // 初始化语言
  final localeCache = await MyCache.getFile(MyConfig.shard.localKey);
  final localTag = await localeCache?.readAsString();
  Global.to.localTag = localTag;
}