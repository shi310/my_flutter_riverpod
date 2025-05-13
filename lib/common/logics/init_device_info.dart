import 'package:my_device_info/my_device_info_method.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../global.dart';
import '../../public/public.dart';
import '../common.dart';

Future<void> initDeviceInfo() async {
  final deviceInfo = await MyDeviceInfo.getDeviceInfo();
  final packageInfo = await PackageInfo.fromPlatform();

  Global.to.myAppInfo = MyAppInfoModel(
    deviceInfo: deviceInfo,
    packageInfo: packageInfo,
    version: packageInfo.version,
  );

  Global.to.shorebirdUpdater.readCurrentPatch().then((currentPatch) {
    MyLogger.w('当前补丁总数量: ${currentPatch?.number}');
    if (currentPatch != null && currentPatch.number > 0) {
      final version = '${Global.to.myAppInfo?.packageInfo?.version}+${currentPatch.number}';
      Global.to.myAppInfo = Global.to.myAppInfo?.copyWith(version: version);
    }
  });
}