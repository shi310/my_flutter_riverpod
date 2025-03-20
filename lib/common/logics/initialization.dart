import 'dart:async';
import 'global_controller.dart';

Future<void> initialization() async {
  await GlobalController.to.onInit();
}