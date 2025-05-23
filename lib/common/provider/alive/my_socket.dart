import 'package:my_flutter_basic/public/public.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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