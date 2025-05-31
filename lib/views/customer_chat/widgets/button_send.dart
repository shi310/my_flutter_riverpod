part of '../view.dart';
// 按钮-发送
class _ButtonSend extends ConsumerWidget {
  final CustomerChatViewArguments arguments;

  const _ButtonSend({
    required this.arguments,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDisableSend = ref.watch(customerChatViewIsDisableSendNotifierProvider);
    final qiChatController = ref.watch(customerChatControllerNotifierProvider.notifier);
    qiChatController.init(arguments: arguments);

    return SizedBox(
      height: 34,
      child: FilledButton(
        onPressed: isDisableSend ? null : () {
          // 消息发送等待方法
          Completer<Int64> sendCompleter = Completer<Int64>();

          // 获取当前起聊的主体
          final controller = ref.read(customerChatControllerNotifierProvider.notifier);
          // 获取输入框
          final inputTextController = ref.read(customerChatViewTextEditingControllerNotifierProvider.notifier);
          // 发送消息
          controller.chatLib?.sendMessage(inputTextController.controller.text, MessageFormat.MSG_TEXT, Int64(controller.consultId ?? 0));
          // 获取消息列表
          // 准备往里面添加消息
          final chatList = ref.read(customerChatViewQichatMessageNotifierProvider.notifier);

          // 添加消息
          chatList.add(QiChatMessageModel(
            id: const Uuid().v4(),
            msgId: Int64(0),
            payloadId: controller.chatLib?.payloadId ?? Int64(0),
            content: inputTextController.controller.text,
            path: null,
            url: null,
            messageFormat: MessageFormat.MSG_TEXT,
            alignType: QichatAlignType.right,
            replyMsgId: Int64(0),
            completer: sendCompleter,
            createTime: DateTime.now().toString().split('.').first,
            autoReplyItem: null,
          ));

          // 移动列表到底部
          ref.read(customerChatViewScrollControllerNotifierProvider.notifier).moveTabToBottom();

          // 清理输入框
          inputTextController.controller.clear();
          // 输入框监听：手动
          inputTextController.listenerText();
        },
        child: Text(S.of(context).send),
      ),
    );
  }
}
