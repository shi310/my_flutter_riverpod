import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

class MyEnvironment {
  static final MyEnvironment _instance = MyEnvironment._internal();
  factory MyEnvironment() => _instance;
  MyEnvironment._internal();

  static Future<Environment> initialize() => _instance._initialize();
  static Future<String> getConfig(List<String> urls) => _instance._getConfig(urls);

  Future<Environment> _initialize() async {
    const String environment = String.fromEnvironment('ENVIRONMENT', defaultValue: 'test');

    log('当前环境为 $environment');

    switch (environment) {
      case 'test':
        return Environment.test;
      case 'pre':
        return Environment.pre;
      case 'rel':
        return Environment.rel;
      case 'grey':
        return Environment.grey;
      default:
        return Environment.test;
    }
  }

  Future<String> _getConfig(List<String> urls) async {
    final Duration timeout = Duration(seconds: 10);
    final HttpClient httpClient = HttpClient();
    String result = '';

    await Future.any(urls.asMap().entries.map((e) async {
      final index = e.key + 1;
      final url = e.value;
      log('正在获取第 $index 个地址的配置 -> $url');
      try {
        final uri = Uri.parse(url);
        final request = await httpClient.getUrl(uri).timeout(timeout);
        final response = await request.close().timeout(timeout);

        if (response.statusCode >= 200 && response.statusCode < 300) {
          final body = await response.transform(utf8.decoder).join();
          if (result.isEmpty) {
            result = body;
            log('第 $index 个地址获取配置成功 -> $body');
          } else {
            log('第 $index 个地址结果返回稍微有点晚 -> 不是最快');
          }
        } else {
          log('第 $index 个地址获取配置失败 -> HTTP ${response.statusCode}');
        }
      } catch (error) {
        log('第 $index 个地址获取配置发生了错误 -> $error');
      }
    }));

    httpClient.close();
    return result;
  }
}

enum Environment {
  test,
  pre,
  rel,
  grey,
}