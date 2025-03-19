import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_basic/common/provider/alive_code.dart';

class Text01View extends ConsumerStatefulWidget {
  const Text01View({super.key});

  @override
  ConsumerState<Text01View> createState() => _Text01ViewState();
}

class _Text01ViewState extends ConsumerState<Text01View> {

  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.invalidate(aliveCodeNotifierProvider));
  }

  @override
  Widget build(BuildContext context) {
    final aliveCode = ref.watch(aliveCodeNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Hello Word View')),
      body: SafeArea(child: Column(
        children: [
          Expanded(child: switch (aliveCode) {
            AsyncData(:final value) => Text(value.picPath),
            AsyncError() => const Text('Oops, something unexpected happened'),
            _ => const CircularProgressIndicator(),
          },),
          ElevatedButton(
            onPressed: () {
              ref.read(aliveCodeNotifierProvider.notifier).updateCaptcha();
            },
            child: Text('改变值'),
          ),
        ],
      ),),
    );
  }
}