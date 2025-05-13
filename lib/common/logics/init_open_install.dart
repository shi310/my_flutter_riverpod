import 'package:openinstall_flutter_plugin/openinstall_flutter_plugin.dart';

import '../../global.dart';
import '../../public/utils/utils.dart';

Future<void> initOpenInstall() async {
  Global.to.openInstallFlutterPlugin = OpeninstallFlutterPlugin();

  Global.to.openInstallFlutterPlugin?.init((Map<String, Object> data) async {
    String wakeUpLog = "wakeup result : channel=${data['channelCode']}, data=${data['bindData']}\n";
    MyLogger.w(wakeUpLog);
  });
}