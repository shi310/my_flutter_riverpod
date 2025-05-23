part of '../view.dart';
class _ButtonRegister extends ConsumerWidget {
  const _ButtonRegister({
    this.onPressed,
  });

  final void Function(String)? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnableButtonRegister = ref.watch(loginViewEnableButtonRegisterNotifierProvider);

    // 注册按钮
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: isEnableButtonRegister ? () => verificationHuman(
          context: context,
          language: ref.read(localeNotifierProvider).languageCode,
          getCaptchaImage: ref.read(humanVerificationNotifierProvider.future),
          onSuccess: (value) => onPressed?.call(value),
        ) : null,
        child: Text(S.of(context).loginViewRegister, style: TextStyle(
          color: Theme.of(context).myColors.onButtonPressed,
        )),
      ),
    );
  }
}