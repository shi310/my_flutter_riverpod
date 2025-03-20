import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_basic/common/common.dart';

class Text03View extends ConsumerWidget{
  const Text03View({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<CaptchaModel> activity = ref.watch(captchaProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Http Request')),
      body: Center(
        child: switch (activity) {
          AsyncData(:final value) => Text('${value.picPath}'),
          AsyncError() => const Text('Oops, something unexpected happened'),
          _ => const CircularProgressIndicator(),
        },
      ),
    );
  }
}