import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n.dart';
import '../common.dart';

Widget builderEmptyDataWidget({
  required BuildContext context
}) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 40, width: double.infinity),
        SvgPicture.asset(Theme.of(context).myIcons.dataEmpty,
          height: 60,
          width: 60,
        ),
        SizedBox(height: 10),
        Text(S.of(context).dataEmpty, style: TextStyle(
          color: Theme.of(context).myColors.textDefault.withValues(alpha: 0.5),
          fontSize: MyFontSize.bodyLarge.value,
        )),
      ]
  );
}