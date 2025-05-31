part of '../view.dart';

/// 顶部标题
class _AppBarTitle extends ConsumerWidget {
  const _AppBarTitle();

  @override Widget build(BuildContext context, WidgetRef ref) {
    // 监听标题的变化
    final title = ref.watch(customerChatViewTitleNotifierProvider);
    return Text(title, style: TextStyle(
      color: Theme.of(context).myColors.textDefault,
      fontSize: MyFontSize.bodyLarge.value,
    ));
  }
}