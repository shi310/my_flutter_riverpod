import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/common.dart';

class Text02View extends ConsumerWidget{
  const Text02View({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<String> activity = ref.watch(codeProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Http Request')),
      body: Center(
        child: switch (activity) {
          AsyncData(:final value) => Text(value),
          AsyncError() => const Text('Oops, something unexpected happened'),
          _ => const CircularProgressIndicator(),
        },
      ),
    );
  }
}