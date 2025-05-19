import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../common.dart';

// 构建客服按钮
Widget builderCustomerButton({
  required BuildContext context,
  required CustomerListViewArguments arguments,
}) => IconButton(
  onPressed: () {
    context.pushNamed(MyRouters.customerListView.name, extra: arguments);
  },
  icon: SvgPicture.asset(Theme.of(context).myIcons.customer,
    colorFilter: ColorFilter.mode(Theme.of(context).myColors.iconDefault, BlendMode.srcIn),
  ),
);
