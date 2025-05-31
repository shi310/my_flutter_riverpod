part of '../view.dart';

class _ButtonEmoticons extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keyboardType = ref.watch(customerChatViewKeyboardTypeNotifierProvider);
    final isLoading = ref.watch(customerChatViewIsLoadingNotifierProvider);

    // 表情
    final qiEmoticons = MyCard(
      padding: EdgeInsets.all(10),
      child: Icon(Icons.mood, color: Theme.of(context).myColors.iconDefault, size: 20),
    );

    // 键盘
    final qiKeyboard = MyCard(
      padding: EdgeInsets.all(10),
      child: Icon(Icons.keyboard, color: Theme.of(context).myColors.iconDefault, size: 20),
    );

    final child = keyboardType == CustomerChatViewKeyboardType.emoticons ? qiKeyboard : qiEmoticons;

    if (isLoading) {
      return child;
    }

    return MyButton(
      borderRadius: BorderRadius.circular(8),
      onPressed: () {
        FocusScope.of(context).unfocus();
        final state = keyboardType == CustomerChatViewKeyboardType.emoticons
            ? CustomerChatViewKeyboardType.text
            : CustomerChatViewKeyboardType.emoticons;
        ref.read(customerChatViewKeyboardTypeNotifierProvider.notifier).set(state);
      },
      child: child,
    );
  }
}