import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_device_info/my_device_info_method.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

import '../../../generated/l10n.dart';
import '../../common.dart';

part 'shore_bird.g.dart';

// baseURLS
@Riverpod(keepAlive: true)
class ShoreBirdUpdateNotifier extends _$ShoreBirdUpdateNotifier {
  // 热更新
  ShorebirdUpdater shorebirdUpdater = ShorebirdUpdater();

  @override
  Timer? build() {
    return null;
  }

  void start() {
    stop();
    state = Timer.periodic(const Duration(minutes: 2), (timer) async {
      final status = await shorebirdUpdater.checkForUpdate();
      if (status == UpdateStatus.outdated) {
        await shorebirdUpdater.update();
        showMyDialog(
          title: (context) {
            return Text(S.of(context).restartTitle, style: TextStyle(
              fontSize: MyFontSize.titleSmall.value,
              fontWeight: FontWeight.w600,
            ));
          },
          content: (context) {
            return Text(S.of(context).restartContent, style: TextStyle(
              fontSize: MyFontSize.body.value,
            ));
          },
          onConfirm: (context) => MyDeviceInfo.restartApp(
            notificationTitle: S.of(context).restartNoticeTitle,
            notificationBody: S.of(context).restartNoticeContent,
          ),
        );
      }
    });
  }

  void stop() {
    state?.cancel();
    state = null;
  }
}