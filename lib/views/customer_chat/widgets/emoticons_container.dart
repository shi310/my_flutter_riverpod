part of '../view.dart';

// 表情选择器
class _EmoticonsContainer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keyboardType = ref.watch(customerChatViewKeyboardTypeNotifierProvider);
    final emoticons = ref.read(customerChatViewEmoticonsNotifierProvider);
    final child = SizedBox(
      height: 225,
      child: _EmojiGrid(
        emoticons: emoticons,
        onPressed: (emoji) {
          ref.read(customerChatViewTextEditingControllerNotifierProvider.notifier).controller.text += emoji;
        },
      ),
    );

    if (keyboardType == CustomerChatViewKeyboardType.text) {
      return Container();
    }

    return Stack(children: [
      child,
      Positioned(
        right: 0,
        bottom: 0,
        child: CircleAvatar(
          backgroundColor: Theme.of(context).myColors.cardBackground,
          child: IconButton(
            onPressed: () {
              final controller = ref.read(customerChatViewTextEditingControllerNotifierProvider.notifier).controller;
              if (controller.text.isNotEmpty) {
                controller.text = controller.text.characters.skipLast(1).toString();
              }
            },
            icon: Icon(Icons.backspace, color: Theme.of(context).myColors.primary),
          ),
        ),
      )
    ]);
  }
}