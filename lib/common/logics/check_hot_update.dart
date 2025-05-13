import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:my_device_info/my_device_info.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

import '../../generated/l10n.dart';
import '../../global.dart';
import '../common.dart';

void startCheckingForHotUpdates() {
  stopCheckingForHotUpdates();
  Global.to.timerHotUpdate = Timer.periodic(const Duration(minutes: 2), (timer) async {
    final status = await Global.to.shorebirdUpdater.checkForUpdate();
    if (status == UpdateStatus.outdated) {
      await Global.to.shorebirdUpdater.update();
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

void stopCheckingForHotUpdates() {
  Global.to.timerHotUpdate?.cancel();
  Global.to.timerHotUpdate = null;
}