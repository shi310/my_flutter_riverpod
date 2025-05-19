import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/l10n.dart';
import '../../public/widgets/widgets.dart';
import '../../common/common.dart';

class InputAccount extends StatelessWidget {
  const InputAccount({super.key,
    required this.accountTextController,
    required this.accountFocusNode,
  });

  final  TextEditingController accountTextController;
  final FocusNode accountFocusNode;

  @override
  Widget build(BuildContext context) {
    return MyInput(
      maxLines: 1,
      controller: accountTextController,
      focusNode: accountFocusNode,
      color: Theme.of(context).myColors.input,
      focusedBorder: Theme.of(context).myStyles.inputBorderFocus,
      enabledBorder: Theme.of(context).myStyles.inputBorder,
      disabledBorder: Theme.of(context).myStyles.inputBorderDisable,
      keyboardType: TextInputType.emailAddress,
      style: Theme.of(context).myStyles.inputText,
      hintStyle: Theme.of(context).myStyles.inputHint,
      hintText: S.of(context).inputAccountHintText,
      suffixIcon: builderInputCloseIcon(
        context: context,
        controller: accountTextController,
      ),
      prefixIcon: builderInputIcon(
        child: SvgPicture.asset(Theme.of(context).myIcons.inputPerson,
          colorFilter: ColorFilter.mode(Theme.of(context).myColors.iconDefault, BlendMode.srcIn),
        ),
        size: 16,
      ),
    );
  }
}