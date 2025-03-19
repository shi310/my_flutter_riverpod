import 'dart:async';
import 'global_controller.dart';

Future<void> initialization() async {
  GlobalController.to.onInit();
}