import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../public/public.dart';
import '../common.dart';

void showResponseError(Response? response) {
  ResponseModel data = ResponseModel.fromJson(response?.data);
  showMySnack(child: Text(data.msg));
}