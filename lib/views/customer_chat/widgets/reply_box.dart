part of '../view.dart';

// 输入框
class _ReplyBox extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final replyMessage = ref.watch(customerChatViewReplyMessageNotifierProvider);
    if (replyMessage == null) {
      return const SizedBox();
    }

    return MyCard(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 5),
      borderRadius: BorderRadius.circular(10),
      padding: EdgeInsets.fromLTRB(12, 5, 6, 5),
      color: Theme.of(context).myColors.buttonDisable,
      child: Row(
        children: [
          Expanded(
              child: Row(
            children: [
              Text('${S.of(context).reply} : '),
              replyMessage.messageFormat == MessageFormat.MSG_VIDEO
                  ? SizedBox(
                      width: 24,
                      height: 24,
                      child: _VideoBox(url: replyMessage.url, path: replyMessage.path),
                    )
                  : replyMessage.messageFormat == MessageFormat.MSG_IMG
                      ? SizedBox(
                          width: 24,
                          height: 24,
                          child: _ImageBox(url: replyMessage.url, path: replyMessage.path),
                        )
                      : Expanded(child: Text('${replyMessage.content}', maxLines: 1, overflow: TextOverflow.ellipsis)),
            ],
          )),
          const SizedBox(width: 8),
          MyButton(
              onPressed: () {
                ref.read(customerChatViewReplyMessageNotifierProvider.notifier).clear();
              },
              child: SizedBox(
                width: 24,
                height: 24,
                child: Center(
                  child: SvgPicture.asset(
                    Theme.of(context).myIcons.inputClear,
                    width: 10,
                    colorFilter: ColorFilter.mode(Theme.of(context).myColors.black, BlendMode.srcIn),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
