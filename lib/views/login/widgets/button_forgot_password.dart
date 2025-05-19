part of '../view.dart';
class _ButtonForgotPassword extends ConsumerWidget {
  const _ButtonForgotPassword({
    this.onPressed,
  });

  final void Function(String)? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnableButtonConfirm = ref.watch(loginViewEnableButtonConfirmNotifierProvider);

    // 忘记密码的确认按钮
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: isEnableButtonConfirm ? () => verificationHuman(
          ref: ref,
          onSuccess: (value) => onPressed?.call(value),
        ) : null,
        child: Text(S.of(context).confirm, style: TextStyle(
          color: Theme.of(context).myColors.onButtonPressed,
        )),
      ),
    );
  }
}