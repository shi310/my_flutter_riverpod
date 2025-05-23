import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'urls.g.dart';

// baseURLS
@Riverpod(keepAlive: true)
class BaseUrlsNotifier extends _$BaseUrlsNotifier {
  @override
  List<String> build() {
    return [];
  }

  void set(List<String> data) {
    state = data;
  }

  void add(String data) {
    state.add(data);
  }

  void clear() {
    state = [];
  }
}

// wssURLS
@Riverpod(keepAlive: true)
class WssUrlsNotifier extends _$WssUrlsNotifier {
  @override
  List<String> build() {
    return [];
  }

  void set(List<String> data) {
    state = data;
  }

  void add(String data) {
    state.add(data);
  }

  void clear() {
    state = [];
  }
}