import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_basic/common/common.dart';
import 'package:my_flutter_basic/public/public.dart';
import 'package:my_flutter_basic/views/views.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      builder: (context, child) => MyAlert(key: MyAlert.globalKey, child: child),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home View')),
      body: Wrap(spacing: 10, runSpacing: 10, children: [
        ElevatedButton(onPressed: () async {
          await Navigator.push(context, MaterialPageRoute(builder: (context) => Text01View()));
        }, child: Text('Text01')),

        ElevatedButton(onPressed: () async {
          await Navigator.push(context, MaterialPageRoute(builder: (context) => Text02View()));
        }, child: Text('Text02')),

        ElevatedButton(onPressed: () async {
          await Navigator.push(context, MaterialPageRoute(builder: (context) => Text03View()));
        }, child: Text('Text03')),

        ElevatedButton(onPressed: () {
          getEnvironment();
        }, child: Text('获取配置')),

        ElevatedButton(
          onPressed: () {
            showMySnack(child: Text('顶部弹窗的文案在这里', style: TextStyle(color: Colors.white)));
          },
          child: Text('顶部提示'),
        ),

        ElevatedButton(
          onPressed: () {
            showMyToast(child: Text('中部弹窗的文案在这里', style: TextStyle(color: Colors.white)));
          },
          child: Text('中部提示'),
        ),
      ]),
    );
  }
}