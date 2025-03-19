import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'code.g.dart';

@riverpod
Future<String> code(Ref ref) async {
  final request = await HttpClient().getUrl(Uri.parse('https://www.baidu.com'));
  final response = await request.close();
  final responseData = await response.transform(utf8.decoder).join();
  return responseData;
}