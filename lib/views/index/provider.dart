import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class IndexViewPageIndex extends _$IndexViewPageIndex {
  @override
  int build() => 0;

  void set(int value) => state = value;
}