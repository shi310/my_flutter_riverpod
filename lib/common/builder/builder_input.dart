import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/common.dart';
import '../../public/public.dart';

// 构建输入框的图标
Widget builderInputIcon({
  Widget? child,
  double? size,
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      color: Colors.white.withAlpha(0),
    ),
    width: 40,
    height: 40,
    child: Center(
      child: SizedBox(
        width: size ?? 16,
        child: child,
      ),
    ),
  );
}

// 构建输入框的关闭图标
Widget builderInputCloseIcon({
  required BuildContext context,
  TextEditingController? controller
}) {
  return builderInputButton(
    onPressed: () {
      controller?.clear();
    },
    child: builderInputIcon(
      child: SvgPicture.asset(Theme.of(context).myIcons.inputClear,
        colorFilter: ColorFilter.mode(Theme.of(context).myColors.inputBorder, BlendMode.srcIn),
      ),
      size: 12,
    ),
  );
}

// 构建输入框右侧的按钮
Widget builderInputButton({
  required Widget child,
  VoidCallback? onPressed,
}) {
  final borderRadius = BorderRadius.only(
    topRight: Radius.circular(10),
    bottomRight: Radius.circular(10),
  );

  return MyButton(
    borderRadius: borderRadius,
    onPressed: onPressed,
    child: child,
  );
}
