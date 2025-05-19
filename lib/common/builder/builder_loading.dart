import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../public/widgets/my_card.dart';
import '../common.dart';

// 构建loading
Widget builderLoading({
  required BuildContext context,
  double? width,
  double? height,
  double? radius,
  EdgeInsetsGeometry? margin,
}) {
  return MyCard(
    width: width,
    height: height,
    margin: margin,
    borderRadius: BorderRadius.circular(radius ?? 8),
    child: LottieBuilder.asset(Theme.of(context).myIcons.loading,
      width: width,
      height: height,
      fit: BoxFit.fill,
    ),
  );
}