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
      baseUrl: urls.firstOrNull ?? '',
      // 上传文件的超时：默认 1 小时
      sendTimeout: timeout * 6 * 60,
      // 服务器相应时间：默认 1 小时
      receiveTimeout: timeout * 6 * 60,
      // 连接超时：默认 10 秒
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


  void close() {
    _dio?.close();
    _dio = null;
  }

  void _logConnectError(DioException err) {
    if (kReleaseMode) {
      return;
    }

    Map<String, dynamic> params = err.requestOptions.queryParameters;

    if (params.isEmpty && err.requestOptions.data != null) {
      if (err.requestOptions.data is Map<String, dynamic>) {
        params = err.requestOptions.data;
      } else {
        params = {
          'data': err.requestOptions.data
        };
      }
    }

    log("❌" * 80);
    log("❌ 请求地址 => ${err.requestOptions.uri}");
    log("❌ 请求方式 => ${err.requestOptions.method}");
    log("❌ 请求头 => ${err.requestOptions.headers.toJsonString().formatJson()}");
    log("❌ 请求参数 => ${params.toJsonString().formatJson()}");
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
    // 请求体
    Response? response;

    for (int index = 0; index < urls.length; index++) {
      try {
        _dio?.options.baseUrl = urls[_index];
        response = await _dio?.get(
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
            response: response,
            message: err.toString(),
          ));
          break;
        }
      }


      if (response != null && response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
        ResponseModel responseModel;

        try {
          responseModel = ResponseModel.fromJson(response.data);
        } catch (e) {
          responseModel = ResponseModel(
            code: 0,
            data: response.data,
            msg: '',
          );
        }

        if (codes.contains(responseModel.code)) {
          final model = onModel != null ? onModel(responseModel.data) : responseModel.data as T;
          await onSuccess?.call(responseModel.code, responseModel.msg, model);
          return;
        } else {
          await onError?.call(response);
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
    Response? response;

    for (int index = 0; index < urls.length; index++) {
      try {
        _dio?.options.baseUrl = urls[_index];
        response = await _dio?.post(
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
            response: response,
            message: err.toString(),
          ));
          break;
        }
      }

      if (response != null && response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
        ResponseModel responseModel;

        try {
          responseModel = ResponseModel.fromJson(response.data);
        } catch (e) {
          responseModel = ResponseModel(
            code: 0,
            data: response.data,
            msg: '',
          );
        }

        if (codes.contains(responseModel.code)) {
          final model = onModel != null ? onModel(responseModel.data) : responseModel.data as T;
          await onSuccess?.call(responseModel.code, responseModel.msg, model);
          return;
        } else {
          await onError?.call(response);
          return;
        }
      }
    }
  }

  Future<void> upload<T>(String path, {
    required Future<Map<String, dynamic>> Function() data,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    Future<dynamic> Function(Response<dynamic>?)? onError,
    Future<void> Function(DioException)? onConnectError,
    Future<dynamic> Function(int, String, T)? onSuccess,
    T Function(dynamic)? onModel,
  }) async {
    Response? response;

    for (int index = 0; index < urls.length; index++) {
      final pragma = await data.call();
      try {
        _dio?.options.baseUrl = urls[_index];
        response = await _dio?.post(path,
          data: FormData.fromMap(pragma),
          options: Options(
            contentType: 'multipart/form-data',
            sendTimeout: timeout * 60 * 60 * 24,
            receiveTimeout: timeout * 60 * 60 * 24,
          ),
          cancelToken: cancelToken ?? cancelTokenPublic,
          onSendProgress: onSendProgress,
        );
      } catch (err) {
        _index = (_index + 1) % urls.length;

        if (index == urls.length - 1) {
          await onConnectError?.call(DioException(
            requestOptions: RequestOptions(
              path: path,
              queryParameters: pragma,
              cancelToken: cancelToken,
              method: 'POST',
              headers: headers,
            ),
            response: response,
            message: err.toString(),
          ));
          break;
        }
      }

      if (response != null && response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300) {
        ResponseModel responseModel;

        try {
          responseModel = ResponseModel.fromJson(response.data);
        } catch (e) {
          responseModel = ResponseModel(
            code: 0,
            data: response.data,
            msg: '',
          );
        }

        if (codes.contains(responseModel.code)) {
          final model = onModel != null ? onModel(responseModel.data) : responseModel.data as T;
          await onSuccess?.call(responseModel.code, responseModel.msg, model);
          return;
        } else {
          await onError?.call(response);
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

  factory ResponseModel.fromJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      return ResponseModel(
        code: json["code"] ?? -1,
        data: json["data"] ?? {},
        msg: json["msg"] ?? '',
      );
    } else if (json is String) {
      try {
        Map<String, dynamic> data = json.toJson();
        return ResponseModel(
          code: data["code"] ?? -1,
          data: data["data"] ?? {},
          msg: data["msg"] ?? '',
        );
      } catch (e) {
        return ResponseModel(
          code: 0,
          data: json,
          msg: '',
        );
      }
    } else {
      return ResponseModel(
        code: 0,
        data: json,
        msg: '',
      );
    }
  }

  Map<String, dynamic> toJson() => {
    "code": code,
    "data": data,
    "msg": msg,
  };
}