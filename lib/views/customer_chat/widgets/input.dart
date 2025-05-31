part of '../view.dart';

// 输入框
class _Input extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = ref.watch(customerChatViewTextEditingControllerNotifierProvider.notifier);
    final isLoading = ref.watch(customerChatViewIsLoadingNotifierProvider);
    return MyInput(
      enabled: isLoading ? false : true,
      padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
      minLines: 1,
      maxLines: 5,
      controller: textController.controller,
      focusNode: textController.focusNode,
      color: Theme.of(context).myColors.input,
      focusedBorder: Theme.of(context).myStyles.inputBorderFocus,
      enabledBorder: Theme.of(context).myStyles.inputBorder,
      keyboardType: TextInputType.emailAddress,
      disabledBorder: Theme.of(context).myStyles.inputBorderDisable,
      style: Theme.of(context).myStyles.inputText,
    );
  }
}