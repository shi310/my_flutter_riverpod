part of '../view.dart';
class _ButtonLogin extends ConsumerWidget {
  const _ButtonLogin({
    this.onPressed,
  });

  final void Function(String)? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnableButtonLogin = ref.watch(loginViewEnableButtonLoginNotifierProvider);

    // 登陆按钮
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        style: FilledButton.styleFrom(
          foregroundColor: Theme.of(context).myColors.onButtonPressed,
        ),
        onPressed: isEnableButtonLogin ? () => verificationHuman(
          context: context,
          language: ref.read(localeNotifierProvider).languageCode,
          getCaptchaImage: ref.read(humanVerificationNotifierProvider.future),
          onSuccess: (value) => onPressed?.call(value),
        ) : null,
        child: Text(S.of(context).loginViewLogin),
      ),
    );
  }
}