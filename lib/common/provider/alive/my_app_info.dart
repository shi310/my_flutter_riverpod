import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../common.dart';

part 'my_app_info.g.dart';

@Riverpod(keepAlive: true)
class MyAppInfoNotifier extends _$MyAppInfoNotifier {
  @override
  MyAppInfoModel? build() {
    return null;
  }

  void update(MyAppInfoModel data) {
    state = data;
  }
}