part of '../view.dart';
class _ButtonRememberPassword extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRememberPassword = ref.watch(loginViewRememberPasswordNotifierProvider);

    // 记住密码
    return MyButton(
      debounceDuration: Duration.zero,
      onPressed: () {
        ref.read(loginViewRememberPasswordNotifierProvider.notifier).set(!isRememberPassword);
      },
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        isRememberPassword
          ? SvgPicture.asset(Theme.of(context).myIcons.singleChecked)
          : SvgPicture.asset(Theme.of(context).myIcons.singleUncheck),
        const SizedBox(width: 4),
        Text(S.of(context).loginViewRememberAccount,
          style: TextStyle(
            fontSize: MyFontSize.body.value,
          ),
        )
      ]),
    );
  }
}