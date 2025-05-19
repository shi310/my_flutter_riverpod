import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../public/widgets/widgets.dart';
import '../../common/common.dart';
import '../login/provider.dart';

class InputPassword extends ConsumerWidget {
  const InputPassword({super.key,
    required this.passwordTextController,
    required this.passwordFocusNode,
    required this.hintText,
  });

  final  TextEditingController passwordTextController;
  final FocusNode passwordFocusNode;
  final String hintText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHidePassword = ref.watch(loginViewHidePasswordNotifierProvider);
    // 显示 / 隐藏密码图标
    final showPasswordIcon = builderInputButton(
      onPressed: () {
        final isHidePasswordRead = ref.read(loginViewHidePasswordNotifierProvider);
        ref.read(loginViewHidePasswordNotifierProvider.notifier).set(!isHidePasswordRead);
      },
      child: builderInputIcon(
        child: SvgPicture.asset(isHidePassword ? Theme.of(context).myIcons.inputShow : Theme.of(context).myIcons.inputHide,
          colorFilter: ColorFilter.mode(Theme.of(context).myColors.inputBorder, BlendMode.srcIn),
        ),
        size: 16,
      ),
    );

    // 密码输入框
    return MyInput(
      maxLines: 1,
      controller: passwordTextController,
      focusNode: passwordFocusNode,
      color: Theme.of(context).myColors.input,
      focusedBorder: Theme.of(context).myStyles.inputBorderFocus,
      keyboardType: TextInputType.emailAddress,
      enabledBorder: Theme.of(context).myStyles.inputBorder,
      disabledBorder: Theme.of(context).myStyles.inputBorderDisable,
      obscureText: isHidePassword,
      style: Theme.of(context).myStyles.inputText,
      hintStyle: Theme.of(context).myStyles.inputHint,
      hintText: hintText,
      suffixIcon: showPasswordIcon,
      prefixIcon: builderInputIcon(
        child: SvgPicture.asset(Theme.of(context).myIcons.inputPassword,
          colorFilter: ColorFilter.mode(Theme.of(context).myColors.iconDefault, BlendMode.srcIn),
        ),
        size: 19,
      ),
    );
  }
}