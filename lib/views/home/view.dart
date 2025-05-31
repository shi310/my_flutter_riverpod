import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/common.dart';
import '../../public/utils/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home View')),
      body: Container(
        color: Colors.blue,
        child: FilledButton(
          onPressed: () async {
            MyCache.removeFile(MyConfig.shard.userInfo);
            context.goNamed(MyRouters.loginView.name);
          },
          child: Text('退出登陆'),
        ),
      ),
    );
  }
}
