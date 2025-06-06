import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../generated/l10n.dart';
import '../common.dart';

Future<void> showMyDialog({
  Widget Function(BuildContext)? title,
  Widget Function(BuildContext)? content,
  bool isDismissible = true,
  Color? backgroundColor,
  String? confirmText,
  String? cancelText,
  void Function(BuildContext)? onConfirm,
  void Function(BuildContext)? onCancel,
  double? margin,
  double? borderRadius,
}) async {
  final context = MyPages.globalNavigatorKey.currentContext;
  if (context == null) {
    return;
  }
  final cancelButton = FilledButton(
    style: FilledButton.styleFrom(
      backgroundColor: Theme.of(context).myColors.buttonCancel,
      foregroundColor: Theme.of(context).myColors.onButtonCancel,
    ),
    child: Text(cancelText ?? S.of(context).cancel),
    onPressed: () {
      context.pop();
      onCancel?.call(context);
    },
  );

  final confirmButton = FilledButton(
    style: FilledButton.styleFrom(
      backgroundColor: Theme.of(context).myColors.primary,
      foregroundColor: Theme.of(context).myColors.onPrimary,
    ),
    child: Text(confirmText ?? S.of(context).confirm),
    onPressed: () async {
      context.pop('Dialog Result');
      onConfirm?.call(context);
    },
  );

  final column = Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      if (title != null) title.call(context),
      if (content != null && title != null) SizedBox(height: 16),
      if (content != null) 
        Flexible(child: content.call(context)),
      if ((title != null || content != null) && (confirmText != null || cancelText != null || onConfirm != null || onCancel != null)) SizedBox(height: 16),
      if (confirmText != null || cancelText != null || onConfirm != null || onCancel != null)
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (cancelText != null || onCancel != null) Expanded(child: cancelButton),
            if ((cancelText != null || onCancel != null) && (confirmText != null || onConfirm != null)) SizedBox(width: 10),
            if (confirmText != null || onConfirm != null) Expanded(child: confirmButton),
          ],
        ),
    ],
  );

  final child = Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Theme.of(context).myColors.appBarGradientStart,
          Theme.of(context).myColors.appBarGradientEnd,
        ],
        stops: const [0.0, 0.33],
      ),
    ),
    padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
    child: column,
  );

  final result = await showDialog(context: context, builder: (context) {
    return SafeArea(
      child: Dialog(
        clipBehavior: Clip.antiAlias,
        insetPadding: margin == null ? const EdgeInsets.all(32) : EdgeInsets.all(margin),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: borderRadius == null ? BorderRadius.circular(10) : BorderRadius.circular(borderRadius)),
        child: child,
      ),
    );
  });

  if (isDismissible == false && result == null) {
    await showMyDialog(
      title: title,
      content: content,
      isDismissible: isDismissible,
      backgroundColor: backgroundColor,
      confirmText: confirmText,
      cancelText: cancelText,
      onConfirm: onConfirm,
      onCancel: onCancel,
      margin: margin,
      borderRadius: borderRadius,
    );
  }
}
