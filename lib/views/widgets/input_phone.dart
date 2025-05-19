import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/l10n.dart';
import '../../public/widgets/widgets.dart';
import '../../common/common.dart';

class InputPhone extends StatelessWidget {
  const InputPhone({super.key,
    required this.phoneTextController,
    required this.phoneFocusNode,
  });

  final  TextEditingController phoneTextController;
  final FocusNode phoneFocusNode;

  @override
  Widget build(BuildContext context) {
    return MyInput(
      maxLines: 1,
      controller: phoneTextController,
      focusNode: phoneFocusNode,
      color: Theme.of(context).myColors.input,
      focusedBorder: Theme.of(context).myStyles.inputBorderFocus,
      disabledBorder: Theme.of(context).myStyles.inputBorderDisable,
      enabledBorder: Theme.of(context).myStyles.inputBorder,
      style: Theme.of(context).myStyles.inputText,
      hintStyle: Theme.of(context).myStyles.inputHint,
      hintText: S.of(context).inputPhoneHintText,
      keyboardType: TextInputType.phone,
      suffixIcon: builderInputCloseIcon(context: context, controller: phoneTextController),
      prefixIcon: builderInputIcon(
        child: SvgPicture.asset(Theme.of(context).myIcons.inputPhone,
          colorFilter: ColorFilter.mode(Theme.of(context).myColors.iconDefault, BlendMode.srcIn),
        ),
        size: 15,
      ),
    );
  }
}