import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../global.dart';
import '../../views/views.dart';

part 'name.dart';



class MyPages {
  static GlobalKey<NavigatorState> globalNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter  routerConfig = GoRouter(
    navigatorKey: globalNavigatorKey,
    redirect: (BuildContext context, GoRouterState state) {
      // 使用过APP会开始重定向
      // 这里分两种情况：
      // 1，用户未登录
      // 2，用户已登录
      if (Global.to.isUsedApp == 'true') {
        if (Global.to.userInfo.token == null) {
          // 本地没有 token 的情况跳转到登陆页面
          return MyRouters.loginView.path;
        } else {
          // 本地有 token 的情况跳转到首页
          return MyRouters.homeView.path;
        }
      }
      return null;
    },
    routes: [
      // 默认页面：欢迎页面
      GoRoute(
        path: MyRouters.indexView.path,
        name: MyRouters.indexView.name,
        builder: (context, state) => IndexView(
          key: state.pageKey,
        ),
      ),

      // 登陆页面：包含登陆，注册，忘记密码，验证码登陆，邮箱登陆等功能
      GoRoute(
        path: MyRouters.loginView.path,
        name: MyRouters.loginView.name,
        builder: (context, state) => LoginView(
          key: state.pageKey,
        ),
      ),
    ],
  );
}