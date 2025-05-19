part of '../view.dart';

// 去首页
void _goHomeView(BuildContext context) {
  context.goNamed(MyRouters.homeView.name);
  saveUserInfo();
}