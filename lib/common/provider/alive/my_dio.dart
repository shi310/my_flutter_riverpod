import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../public/public.dart';

part 'my_dio.g.dart';

@Riverpod(keepAlive: true)
class MyDioForAppNotifier extends _$MyDioForAppNotifier {
  @override
  MyDio? build() {
    return null;
  }

  void set(MyDio data) {
    state = data;
  }

  void close() {
    state?.close();
    state = null;
  }
}