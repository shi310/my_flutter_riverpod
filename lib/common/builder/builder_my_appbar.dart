import 'package:flutter/material.dart';

import '../../public/public.dart';
import '../common.dart';

// appBar的文字样式
TextStyle _appBarTitle(BuildContext context) => TextStyle(
  color: Theme.of(context).myColors.onaAppBar,
  fontSize: MyFontSize.bodyLarge.value,
);

// appBar的图标样式
IconThemeData _appBarIconThemeData(BuildContext context) => IconThemeData(
  color: Theme.of(context).myColors.onaAppBar,
  size: 18,
);

// appBar的底部空间
Widget _flexibleSpace(BuildContext context) => Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Theme.of(context).myColors.appBarGradientStart,
        Theme.of(context).myColors.appBarGradientEnd,
      ],
      stops: const [0.0, 1],
    ),
  ),
);

/// 普通的 appbar
/// 传文字就行
MyAppBar builderMyAppBarNormal({
  required BuildContext context, 
  String? title, 
  List<Widget>? actions,
}) => MyAppBar(
  backgroundColor: Theme.of(context).myColors.background,
  title: title == null ? null : Text(title, maxLines: 1),
  titleTextStyle: _appBarTitle.call(context),
  iconTheme: _appBarIconThemeData.call(context),
  actions: actions,
  flexibleSpace: _flexibleSpace.call(context),
);

/// 普通的 APPBAR
/// 可以传入一个 widget
/// 自由度更高
MyAppBar builderMyAppBarNormalWidget({
  required BuildContext context,
  Widget? title,
  List<Widget>? actions,
}) => MyAppBar(
  backgroundColor: Theme.of(context).myColors.background,
  title: title,
  titleTextStyle: _appBarTitle.call(context),
  iconTheme: _appBarIconThemeData.call(context),
  actions: actions,
  titleSpacing: 0,
  flexibleSpace: _flexibleSpace.call(context),
);

/// 透明的
MyAppBar builderMyAppBarTransparent({
  required BuildContext context,
  String? title,
  List<Widget>? actions,
}) => MyAppBar(
  backgroundColor: Theme.of(context).myColors.background.withValues(alpha:  0),
  title: title == null ? null : Text(title, maxLines: 1),
  actions: actions,
  titleTextStyle: _appBarTitle.call(context),
  iconTheme: _appBarIconThemeData.call(context),
  elevation: 0,
);

/// 首页的banner
MyAppBar builderMyAppBarSpacer({
  required BuildContext context,
  Widget? title,
  Widget? flexibleSpace,
  PreferredSizeWidget? bottom,
}) => MyAppBar(
  backgroundColor: Colors.transparent,
  title: title,
  titleSpacing: 0,
  flexibleSpace: flexibleSpace,
  bottom: bottom,
  iconTheme: _appBarIconThemeData.call(context),
);

/// scan 专用（白色）
MyAppBar builderMyAppBarWhite({
  required String title,
  required BuildContext context,
}) {
  final whiteAppbarTitleTextStyle = TextStyle(
    color: Theme.of(context).myColors.onPrimary,
    fontSize: MyFontSize.bodyLarge.value,
  );
  final whiteAppBarIconThemeData = IconThemeData(
    size: 18,
    color: Theme.of(context).myColors.onPrimary,
  );
  return MyAppBar(
    backgroundColor: Colors.transparent,
    title: Text(title, maxLines: 1),
    titleTextStyle: whiteAppbarTitleTextStyle,
    iconTheme: whiteAppBarIconThemeData,
  );
}

/// 带颜色的 appbar
MyAppBar builderMyAppBarColor({
  required BuildContext context,
  String? title,
  Color? color,
  List<Widget>? actions,
}) {
  final whiteAppbarTitleTextStyle = TextStyle(
    color: Theme.of(context).myColors.onPrimary,
    fontSize: MyFontSize.bodyLarge.value,
  );
  final whiteAppBarIconThemeData = IconThemeData(
    size: 18,
    color: Theme.of(context).myColors.onPrimary,
  );
  return MyAppBar(
    backgroundColor: color,
    title: title == null ? null : Text(title, maxLines: 1),
    titleTextStyle: whiteAppbarTitleTextStyle,
    iconTheme: whiteAppBarIconThemeData,
    actions: actions,
    elevation: 0.0,
  );
}