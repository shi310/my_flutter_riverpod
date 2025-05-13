import '../../public/utils/utils.dart';
import '../common.dart';

Future<void> getEnvironment() async {
  final environment = await MyEnvironment.initialize();

  switch (environment){
    case Environment.rel:
      await getOptions(urls: MyConfig.urls.relUrls, onSuccess: () async {
        await setMyDio();
      });
      break;
    case Environment.pre:
      await getOptions(urls: MyConfig.urls.preUrls, onSuccess: () async {
        await setMyDio();
      });
      break;
    case Environment.grey:
      await getOptions(urls: MyConfig.urls.greyUrls, onSuccess: () async {
        await setMyDio();
      });
      break;
    default:
      await getOptions(urls: MyConfig.urls.testUrls, onSuccess: () async {
        await setMyDio();
      });
      break;
  }
}