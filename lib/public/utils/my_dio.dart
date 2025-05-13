import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'utils.dart';

class MyDio {
  MyDio({
    required this.urls,
    this.headers,
    this.onResponse,
    // this.onConnectError,
    this.codes = const [200],
    this.timeout = const Duration(seconds: 5),
  }) {
    if (isInitialized) {
      log("⚠️ MyDio 已经初始化过...");
      return;
    }

    final baseOptions = BaseOptions(
      baseUrl: urls.first,
      sendTimeout: timeout,
      receiveTimeout: timeout,
      connectTimeout: timeout,
      responseType: ResponseType.json,
      contentType: 'application/json; charset=utf-8',
    );

    _dio = Dio(baseOptions);

    _dio?.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        if (headers != null) {
          options.headers.addAll(headers!);
        }
        return handler.next(options);
      },
      onResponse: (response, handler) async {
        _logConnectSuccess(response);
        await onResponse?.call(response);
        return handler.next(response);
      },
      onError: (err, handle) async {
        _logConnectError(err);
        // await onConnectError?.call(err);
        return handle.next(err);
      },
    ));
  }

  List<String> urls;
  Map<String, String>? headers;
  final Future<void> Function(Response<dynamic> response)? onResponse;
  // final Future<void> Function(DioException)? onConnectError;
  final List<int> codes;
  final Duration timeout;

  CancelToken cancelTokenPublic = CancelToken();
  Dio? _dio;
  bool get isInitialized => _dio != null;

  // index
  int _index = 0;


  // 请求体
  Response? _response;

  void close() {
    _dio?.close();
    _dio = null;
  }

  void _logConnectError(DioException err) {
    if (kReleaseMode) {
      return;
    }

    log("❌" * 80);
    log("❌ 请求地址 => ${err.requestOptions.uri}");
    log("❌ 请求方式 => ${err.requestOptions.method}");
    log("❌ 请求头 => ${err.requestOptions.headers.toJsonString().formatJson()}");
    log("❌ 请求参数 => ${err.requestOptions.queryParameters.toJsonString().formatJson()}");
    log("❌ 错误信息 => ${err.message}");
    log("❌" * 80);
  }

  void _logConnectSuccess(Response response) {
    if (kReleaseMode) {
      return;
    }

    String icon = '✅';
    Map<String, dynamic> params = response.requestOptions.queryParameters;

    if (params.isEmpty && response.requestOptions.data != null) {
      if (response.requestOptions.data is Map<String, dynamic>) {
        params = response.requestOptions.data;
      } else {
        params = {
          'data': response.requestOptions.data
        };
      }
    }
    ResponseModel responseModel = ResponseModel(
      code: -1,
      data: {},
      msg: '',
    );

    try {
      responseModel = ResponseModel.fromJson( response.data);
      if (!codes.contains(responseModel.code)) {
        icon = '⚠️';
      }
    } catch (e) {
      icon = '🔔';
    }

    log(icon * 80);
    log("$icon️ 请求地址 => ${response.requestOptions.uri}");
    log("$icon 请求方式 => ${response.requestOptions.method}");
    log("$icon 请求头 => ${response.requestOptions.headers.toJsonString().formatJson()}");
    log("$icon 请求参数 => ${params.toJsonString().formatJson()}");
    log("$icon 返回数据 => ${responseModel.toJson().toJsonString().formatJson()}");
    log(icon * 80);
  }

  Future<void> get<T>(String path, {
    Map<String, dynamic>? data,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
    Future<dynamic> Function(int, String, T)? onSuccess,
    Future<dynamic> Function(Response)? onError,
    Future<void> Function(DioException)? onConnectError,
    T Function(dynamic)? onModel,
  }) async {
    for (int index = 0; index < urls.length; index++) {
      try {
        _dio?.options.baseUrl = urls[_index];
        _response = await _dio?.get(
          path,
          queryParameters: data,
          cancelToken: cancelToken ?? cancelTokenPublic,
          onReceiveProgress: onReceiveProgress,
        );
      } catch (err) {
        _index = (_index + 1) % urls.length;

        if (index == urls.length - 1) {
          await onConnectError?.call(DioException(
            requestOptions: RequestOptions(
              path: path,
              queryParameters: data,
              cancelToken: cancelToken,
              method: 'POST',
              headers: headers,
            ),
            response: _response,
            message: err.toString(),
          ));
          break;
        }
      }

      if (_response != null && _response!.statusCode != null && _response!.statusCode! >= 200 && _response!.statusCode! < 300) {
        final responseModel = ResponseModel.fromJson(_response?.data);
        if (codes.contains(responseModel.code)) {
          final model = onModel != null ? onModel(responseModel.data) : responseModel.data as T;
          await onSuccess?.call(responseModel.code, responseModel.msg, model);
          return;
        } else {
          await onError?.call(_response!);
          return;
        }
      }
    }
  }

  Future<void> post<T>(String path, {
    Future<dynamic> Function(int, String, T)? onSuccess,
    Map<String, dynamic>? data,
    CancelToken? cancelToken,
    Future<dynamic> Function(Response<dynamic>?)? onError,
    Future<void> Function(DioException)? onConnectError,
    T Function(dynamic)? onModel,
  }) async {
    for (int index = 0; index < urls.length; index++) {
      try {
        _dio?.options.baseUrl = urls[_index];
        _response = await _dio?.post(
          path,
          data: data,
          cancelToken: cancelToken ?? cancelTokenPublic,
        );
      } catch (err) {
        _index = (_index + 1) % urls.length;

        if (index == urls.length - 1) {
          await onConnectError?.call(DioException(
            requestOptions: RequestOptions(
              path: path,
              queryParameters: data,
              cancelToken: cancelToken,
              method: 'POST',
              headers: headers,
            ),
            response: _response,
            message: err.toString(),
          ));
          break;
        }
      }

      if (_response != null && _response!.statusCode != null && _response!.statusCode! >= 200 && _response!.statusCode! < 300) {
        final responseModel = ResponseModel.fromJson(_response?.data);
        if (codes.contains(responseModel.code)) {
          final model = onModel != null ? onModel(responseModel.data) : responseModel.data as T;
          await onSuccess?.call(responseModel.code, responseModel.msg, model);
          return;
        } else {
          await onError?.call(_response!);
          return;
        }
      }
    }
  }

  Future<void> upload<T>(String path, {
    Map<String, dynamic>? data,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    Future<dynamic> Function(Response<dynamic>?)? onError,
    Future<void> Function(DioException)? onConnectError,
    Future<dynamic> Function(int, String, T)? onSuccess,
    T Function(dynamic)? onModel,
  }) async {
    for (int index = 0; index < urls.length; index++) {
      try {
        _dio?.options.baseUrl = urls[_index];
        _response = await _dio?.post(
          path,
          data: data == null ? null : FormData.fromMap(data),
          options: Options(
            contentType: 'multipart/form-data',
          ),
          cancelToken: cancelToken ?? cancelTokenPublic,
          onReceiveProgress: onSendProgress,
        );
      } catch (err) {
        _index = (_index + 1) % urls.length;

        if (index == urls.length - 1) {
          await onConnectError?.call(DioException(
            requestOptions: RequestOptions(
              path: path,
              queryParameters: data,
              cancelToken: cancelToken,
              method: 'POST',
              headers: headers,
            ),
            response: _response,
            message: err.toString(),
          ));
          break;
        }
      }

      if (_response != null && _response!.statusCode != null && _response!.statusCode! >= 200 && _response!.statusCode! < 300) {
        final responseModel = ResponseModel.fromJson(_response?.data);
        if (codes.contains(responseModel.code)) {
          final model = onModel != null ? onModel(responseModel.data) : responseModel.data as T;
          await onSuccess?.call(responseModel.code, responseModel.msg, model);
          return;
        } else {
          await onError?.call(_response!);
          return;
        }
      }
    }
  }
}

class ResponseModel {
  int code;
  dynamic data;
  String msg;

  ResponseModel({
    required this.code,
    required this.data,
    required this.msg,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
    code: json["code"] ?? -1,
    data: json["data"] ?? {},
    msg: json["msg"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "data": data,
    "msg": msg,
  };
}