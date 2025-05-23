part of '../view.dart';

class QiChatListener implements TeneasySDKDelegate {
  // 回调：收到客服发来的消息
  final void Function(Message) onReceivedMsg;
  // 回调：收到系统消息
  final void Function(Result) onSystemMsg;
  // 回调：连接成功
  final void Function(SCHi) onConnected;
  // 回调：客服变更
  final void Function(SCWorkerChanged) onWorkChanged;
  // 回调：消息删除
  final void Function(Message, int, String?) onMsgDeleted;
  // 回调：消息回执
  final void Function(Message, int, String?) onMsgReceipt;

  const QiChatListener({
    required this.onReceivedMsg,
    required this.onSystemMsg,
    required this.onConnected,
    required this.onWorkChanged,
    required this.onMsgDeleted,
    required this.onMsgReceipt,
  });

  @override
  void receivedMsg(msg) {
    MyLogger.w("收到客服发来的消息: $msg");
    onReceivedMsg.call(msg);
  }

  @override
  void systemMsg(result) {
    MyLogger.w("系统消息: ${result.message}");
    onSystemMsg.call(result);
  }

  @override
  void connected(c) async {
    MyLogger.w("起聊连接成功 -> token: ${c.token}");
    onConnected.call(c);
  }

  @override
  void workChanged(msg) {
    MyLogger.w("客服更改为 -> Consult ID: ${msg.consultId}");
    onWorkChanged.call(msg);
  }

  @override
  void msgDeleted(msg, payloadId, errMsg) {
    MyLogger.w("删除成功: ${msg.msgId} ");
    onMsgDeleted.call(msg, payloadId.toString().toInt(), errMsg);
  }

  @override
  void msgReceipt(msg, payloadId, errMsg) {
    MyLogger.w("收到回执 payloadId:$payloadId msgId: ${msg.msgId}");
    onMsgReceipt.call(msg, payloadId.toString().toInt(), errMsg);
  }
}
