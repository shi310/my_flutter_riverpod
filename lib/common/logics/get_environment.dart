import '../../public/utils/utils.dart';
import '../common.dart';

Future<void> getEnvironment() async {
  final environment = await MyEnvironment.initialize();

  switch (environment){
    case Environment.rel:
      MyLogger.w('当前环境为正式环境...');
      await getOptions(urls: MyConfig.urls.relUrls, onSuccess: () async {
        await setMyDio();
      });
      break;
    case Environment.pre:
      MyLogger.w('当前环境为预发环境...');
      await getOptions(urls: MyConfig.urls.preUrls, onSuccess: () async {
        await setMyDio();
      });
      break;
    case Environment.grey:
      MyLogger.w('当前环境为灰度环境...');
      await getOptions(urls: MyConfig.urls.greyUrls, onSuccess: () async {
        await setMyDio();
      });
      break;
    default:
      MyLogger.w('当前环境为测试环境...');
      await getOptions(urls: MyConfig.urls.testUrls, onSuccess: () async {
        await setMyDio();
      });
      break;
  }
}