part of '../view.dart';

class QiChatLineDetect implements LineDetectDelegate {
  final void Function(Result) onLineError;
  final void Function(String) onUseTheLine;
  final CustomerChatViewArguments arguments;

  QiChatLineDetect({
    required this.onLineError,
    required this.onUseTheLine,
    required this.arguments,
  }) {
    final lineDetect = LineDetectLib(
      arguments.apiUrl ?? '',
      tenantId: arguments.tenantId,
    );
    lineDetect.delegate = this;
    lineDetect.getLine();
  }

  @override
  void lineError(error) {
    MyLogger.w('起聊初始化线路失败 -> ${error.message}');
    onLineError.call(error);
  }

  @override
  void useTheLine(line) async {
    MyLogger.w('起聊初始化线路成功 -> $line');
    onUseTheLine.call(line);
  }
}