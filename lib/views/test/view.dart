import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/common.dart';
import '../../generated/l10n.dart';
import '../../public/public.dart';

class TestView extends ConsumerWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Test View')),
      backgroundColor: Theme.of(context).myColors.background,
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2.5,
        children: [
          ElevatedButton(onPressed: () {
            getEnvironment();
          }, child: FittedBox(child: Text('获取配置'))),

          ElevatedButton(
            onPressed: () {
              showMySnack(child: Text('顶部弹窗的文案在这里', style: TextStyle(color: Colors.white)));
            },
            child: FittedBox(child: Text('顶部提示')),
          ),

          ElevatedButton(
            onPressed: () {
              showMyToast(child: Text('中部弹窗的文案在这里', style: TextStyle(color: Colors.white)));
            },
            child: FittedBox(child: Text('中部提示')),
          ),

          Center(child: Text(S.of(context).fileSizeOut(30))),

          ElevatedButton(
            onPressed: () async {
              ref.read(localeNotifierProvider.notifier).en();
            },
            child: Text('英语'),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(localeNotifierProvider.notifier).zh();
            },
            child: Text('中文'),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(localeNotifierProvider.notifier).system();
            },
            child: FittedBox(child: Text('系统语言')),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).light();
            },
            child: Text('亮色'),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).dark();
            },
            child: Text('暗色'),
          ),

          ElevatedButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).system();
              MyCache.removeFile(MyConfig.shard.themeModeKey);
            },
            child: FittedBox(child: Text('系统主题')),
          ),

          ElevatedButton(
            onPressed: () {

            },
            child: FittedBox(child: Text('112313')),
          ),
        ],
      ),
    );
  }
}