import 'package:openinstall_flutter_plugin/openinstall_flutter_plugin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../public/public.dart';

part 'open_install.g.dart';

// baseURLS
@Riverpod(keepAlive: true)
class OpenInstallNotifier extends _$OpenInstallNotifier {
  OpeninstallFlutterPlugin plugin = OpeninstallFlutterPlugin();

  @override
  void build() {
    plugin.init((Map<String, Object> data) async {
      String wakeUpLog = "wakeup result : channel=${data['channelCode']}, data=${data['bindData']}\n";
      MyLogger.w(wakeUpLog);
    });
  }
}