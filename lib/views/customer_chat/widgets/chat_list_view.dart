part of '../view.dart';

/// 聊天列表
class _ChatListView extends ConsumerWidget {
  final CustomerChatViewArguments arguments;
  const _ChatListView({
    required this.arguments,
  });

  @override Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ref.watch(customerChatViewScrollControllerNotifierProvider.notifier);
    final qichatMessage = ref.watch(customerChatViewQichatMessageNotifierProvider);
    final qichatController = ref.watch(customerChatControllerNotifierProvider.notifier);

    return ListView.builder(
      padding: EdgeInsets.all(16),
      controller: scrollController.controller,
      // physics: AlwaysScrollableScrollPhysics(),
      // shrinkWrap: true,
      itemCount: qichatMessage.length,
      itemBuilder: (context, index) {
        Widget messageBox;

        // 头像
        // 分别获取用户头像和客服头像
        Widget avatar = Image.asset(Theme.of(context).myIcons.defaultAvatar);

        if (qichatMessage[index].alignType == QichatAlignType.right) {
          final userInfo = ref.watch(userInfoNotifierProvider);
          if (userInfo.user != null && userInfo.user!.avatarUrl != null && userInfo.user!.avatarUrl!.isNotEmpty) {
            avatar = MyImage(imageUrl: userInfo.user!.avatarUrl!);
          }
        } else {
          // 客服发的消息
          avatar = MyImage(imageUrl: '${arguments.imageUrl}${qichatController.customerAvatar}');
        }

        final reply = ref.read(customerChatViewQichatMessageNotifierProvider.notifier).getMessageById(qichatMessage[index].replyMsgId);

        Widget child = _CustomerChatViewMessageBoxChild(message: qichatMessage[index], reply: reply);

        if (qichatMessage[index].autoReplyItem != null) {
          child = _CustomerChatMessageBoxQA(
            autoReplyItem: qichatMessage[index].autoReplyItem!,
            itemPressed: (title, qa) {
              List<QiChatMessageModel> messages = <QiChatMessageModel>[];

              // 用户先把标题发出去
              final user = QiChatMessageModel(
                id: const Uuid().v4(),
                msgId: Int64(0),
                payloadId: Int64(0),
                content: title,
                url: null,
                path: null,
                messageFormat: MessageFormat.MSG_TEXT,
                alignType: QichatAlignType.right,
                replyMsgId: Int64(0),
                completer: null,
                createTime: DateTime.now().toString().split('.').first,
                autoReplyItem: null,
              );

              // 模拟客服发送答案
              final customer = QiChatMessageModel(
                id: const Uuid().v4(),
                msgId: Int64(0),
                payloadId: Int64(0),
                content: qa.content,
                url: null,
                path: null,
                messageFormat: MessageFormat.MSG_TEXT,
                alignType: QichatAlignType.left,
                replyMsgId: Int64(0),
                completer: null,
                createTime: DateTime.now().toString().split('.').first,
                autoReplyItem: null,
              );

              // 因为是倒叙，所以先把客服发的放进去
              messages.insert(0, customer);
              // 再把答案消息添加到消息列表
              messages.insert(0, user);

              // 添加历史记录到窗口
              ref.read(customerChatViewQichatMessageNotifierProvider.notifier).addAll(messages);
              ref.read(customerChatViewScrollControllerNotifierProvider.notifier).moveTabToBottom();
            },
          );
        }

        messageBox = _CustomerChatViewMessageBox(
          createTime: qichatMessage[index].createTime,
          alignType: qichatMessage[index].alignType,
          avatar: avatar,
          child: child,
        );

        // 空的自动回复消息体
        if (qichatMessage[index].autoReplyItem != null && qichatMessage[index].autoReplyItem!.qa != null && qichatMessage[index].autoReplyItem!.qa!.isEmpty) {
          return Container();
        }

        return MyCard(
          margin: index == qichatMessage.length - 1 ? null : const EdgeInsets.only(bottom: 16),
          child: messageBox,
        );
      },
    );
  }
}