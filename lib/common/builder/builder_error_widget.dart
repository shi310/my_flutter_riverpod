import 'package:flutter/material.dart';
import 'package:my_flutter_basic/common/common.dart';
import 'package:my_flutter_basic/views/widgets/index.dart';

import '../../generated/l10n.dart';

Widget builderErrorWidget(Object error, {
  required BuildContext context,
  required void Function() onRefresh,
}) {
  // WidgetsBinding.instance.addPostFrameCallback((_) {
  //   MyAlert.showSnack(child: Text(error.toString()));
  // });

  return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 40, width: double.infinity),
        Icon(Icons.public_off,
          size: 60,
          color: Theme.of(context).myColors.textDefault.withValues(alpha: 0.5),
        ),
        SizedBox(height: 10),
        Text(S.of(context).dataError, style: TextStyle(
          color: Theme.of(context).myColors.textDefault.withValues(alpha: 0.5),
          fontSize: MyFontSize.bodyLarge.value,
        )),
        SizedBox(height: 10),
        TextButtonShort(
          onPressed: onRefresh,
          text: S.of(context).retry,
          textColor: Theme.of(context).myColors.primary,
          backgroundColor: Theme.of(context).myColors.primary.withValues(alpha: 0.05),
        ),
      ],
  );
}