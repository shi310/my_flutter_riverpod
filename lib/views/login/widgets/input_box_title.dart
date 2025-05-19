part of '../view.dart';

class _InputBoxTitle extends ConsumerWidget {
  const _InputBoxTitle({
    required this.onLoginStateChange,
    required this.onRegisterStateChange,
  });

  final void Function(SignState) onLoginStateChange;
  final void Function(SignState) onRegisterStateChange;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signState = ref.watch(loginViewSignStateNotifierProvider);
    final selectTextStyle = TextStyle(
      color: Theme.of(context).myColors.primary,
      fontSize: MyFontSize.bodyLarge.value,
      fontWeight: FontWeight.w600,
    );

    if (signState == SignState.forgotPassword) {
      return Stack(alignment: AlignmentDirectional.center, children: [
        const SizedBox(width: double.infinity, height: 60),
        Positioned(bottom: 4, child: Image.asset(Theme.of(context).myIcons.loginTitleSelect, height: 20)),
        FittedBox(child: Text(S.of(context).loginViewForgotPassword, style: selectTextStyle)),
      ]);
    }

    final loginTitleBackgroundLeft = SvgPicture.asset(Theme.of(context).myIcons.loginTitleBackgroundLeft, height: 60, width: double.infinity, fit: BoxFit.fill);
    final loginTitleBackgroundRight = SvgPicture.asset(Theme.of(context).myIcons.loginTitleBackgroundRight, height: 60, width: double.infinity, fit: BoxFit.fill);

    final background = [SignState.loginForPassword, SignState.loginForCode].contains(signState)
        ? Row(children: [Expanded(child: loginTitleBackgroundLeft), const Expanded(child: SizedBox())])
        : Row(children: [const Expanded(child: SizedBox()), Expanded(child: loginTitleBackgroundRight)]);

    final leftSelect = Stack(alignment: AlignmentDirectional.center, children: [
      const SizedBox(width: double.infinity, height: 60),
      Positioned(bottom: 5, child: Image.asset(Theme.of(context).myIcons.loginTitleSelect, height: 20)),
      FittedBox(child: Text(S.of(context).loginViewTitleLogin, style: selectTextStyle)),
    ]);

    final rightSelect = Stack(alignment: AlignmentDirectional.center, children: [
      const SizedBox(width: double.infinity, height: 60),
      Positioned(bottom: 5, child: Image.asset(Theme.of(context).myIcons.loginTitleSelect, height: 20)),
      FittedBox(child: Text(S.of(context).loginViewTitleRegister, style: selectTextStyle)),
    ]);

    final leftUnselect = GestureDetector(
      onTap: () => onLoginStateChange.call(SignState.loginForPassword),
      child: MyCard(
        child: Center(
          child: Text(S.of(context).loginViewTitleLogin,
            style: TextStyle(
              fontSize: MyFontSize.bodyLarge.value,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );

    final rightUnselect = GestureDetector(
      onTap: () => onRegisterStateChange.call(SignState.register),
      child: MyCard(
        child: Center(
          child: Text(S.of(context).loginViewTitleRegister,
            style: TextStyle(
              fontSize: MyFontSize.bodyLarge.value,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );

    final left = signState == SignState.loginForPassword || signState == SignState.loginForCode
      ? leftSelect
      : leftUnselect;

    final right = signState == SignState.register
      ? rightSelect
      : rightUnselect;

    final content = Row(children: [Expanded(child: left), Expanded(child: right)]);

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        background,
        Positioned.fill(child: content),
      ],
    );
  }
}