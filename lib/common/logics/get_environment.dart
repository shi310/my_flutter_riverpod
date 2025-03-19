import 'package:my_flutter_basic/common/common.dart';
import 'package:my_flutter_basic/public/public.dart';

Future<void> getEnvironment() async {
  switch (MyEnvironment.getValue()){
    case Environment.rel:
      await getOptions(urls: MyConfig.urls.relUrls, onSuccess: setMyDio);
      break;
    case Environment.pre:
      await getOptions(urls: MyConfig.urls.preUrls, onSuccess: setMyDio);
      break;
    case Environment.grey:
      await getOptions(urls: MyConfig.urls.greyUrls, onSuccess: setMyDio);
      break;
    default:
      await getOptions(urls: MyConfig.urls.testUrls, onSuccess: setMyDio);
      break;
  }
}