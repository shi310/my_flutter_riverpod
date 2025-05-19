import 'package:flutter/material.dart';

import '../../common/common.dart';

class TextButtonLong extends StatelessWidget {
  const TextButtonLong({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor,
    this.backgroundColor,
  });

  final void Function()? onPressed;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).myColors.textDefault,
            backgroundColor: backgroundColor
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(
          color: textColor,
          fontSize: MyFontSize.body.value,
        )),
      ),
    );
  }
}

class TextButtonShort extends StatelessWidget {
  const TextButtonShort({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor,
    this.backgroundColor,
  });

  final void Function()? onPressed;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Theme.of(context).myColors.textDefault,
        backgroundColor: backgroundColor
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(
        color: textColor,
        fontSize: MyFontSize.body.value,
      )),
    );
  }
}