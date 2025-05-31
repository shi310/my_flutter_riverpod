import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../public/public.dart';

part 'my_socket.g.dart';

@Riverpod(keepAlive: true)
class MySocketForAppNotifier extends _$MySocketForAppNotifier {
  @override
  MySocket? build() {
    return null;
  }

  void set(MySocket data) {
    state = data;
  }

  void close() {
    state?.close();
    state = null;
  }
}