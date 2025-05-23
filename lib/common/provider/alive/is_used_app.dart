import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_used_app.g.dart';

@Riverpod(keepAlive: true)
class IsUsedAppNotifier extends _$IsUsedAppNotifier {
  @override
  String build() {
    return 'false';
  }

  void set(String data) {
    state = data;
  }
}