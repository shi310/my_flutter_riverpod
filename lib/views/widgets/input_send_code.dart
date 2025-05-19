import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_svg/svg.dart';

import '../../generated/l10n.dart';
import '../../global.dart';
import '../../public/widgets/widgets.dart';
import '../../common/common.dart';
import '../login/provider.dart';

class InputSendCode extends ConsumerStatefulWidget {
  const InputSendCode({
    super.key,
    required this.phoneCodeTextController,
    required this.phoneCodeFocusNode,
    required this.accountTextController,

    this.onSendCodeBefore,
    this.onSendCodeSuccess,
    this.onSendCodeError,
    this.onTimeOver,
  });

  final TextEditingController phoneCodeTextController;
  final FocusNode phoneCodeFocusNode;
  final TextEditingController accountTextController;

  final void Function()? onSendCodeBefore;
  final void Function()? onSendCodeSuccess;
  final void Function()? onSendCodeError;
  final void Function()? onTimeOver;

  @override
  ConsumerState<InputSendCode> createState() => _InputSendCodeState();
}

class _InputSendCodeState extends ConsumerState<InputSendCode> {
  // 时间控制器-发送验证码
  Timer? _timerSendCodeWaiting;

  @override
  void dispose() {
    stopTimer();
    super.dispose();
  }

  // 停止倒计时
  void stopTimer() {
    _timerSendCodeWaiting?.cancel();
    _timerSendCodeWaiting = null;
  }

  // 开始发送验证码倒计时
  void startTimer() {
    final timeSendWait = ref.read(loginViewTimeSendWaitNotifierProvider.notifier);
    stopTimer();
    timeSendWait.set(60);
    _timerSendCodeWaiting = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      final timeSendWaitTemp = ref.read(loginViewTimeSendWaitNotifierProvider);
      timeSendWait.set(timeSendWaitTemp - 1);
      if (timeSendWaitTemp <= 0) {
        stopTimer();
        // _updateSendCodeState(
        //   state: SendCodeState.toBeSend,
        //   ref: ref,
        // );
        widget.onTimeOver?.call();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isEnableButtonSendCode = ref.watch(loginViewEnableButtonSendCodeNotifierProvider);
    final timeSendWait = ref.watch(loginViewTimeSendWaitNotifierProvider);
    final codeState = ref.watch(loginViewSendCodeStateNotifierProvider);

    final sendCodeIcon = IntrinsicWidth(
      child: MyCard(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        margin: EdgeInsets.all(4),
        borderRadius: BorderRadius.circular(8),
        color: codeState == SendCodeState.toBeSend && isEnableButtonSendCode
            ? Theme.of(context).myColors.secondary
            : Theme.of(context).myColors.buttonDisable,
        child: Center(
          child: codeState != SendCodeState.sending
            ? Text( codeState == SendCodeState.waiting ? timeSendWait.toString() : S.of(context).sendCode,
                style: TextStyle(
                    color: Theme.of(context).myColors.white,
                    fontSize: MyFontSize.body.value,
                  ),
                )
              : CupertinoActivityIndicator(color: Theme.of(context).myColors.white),
        ),
      ),
    );

    // 手机验证码
    return MyInput(
      maxLines: 1,
      controller: widget.phoneCodeTextController,
      keyboardType: TextInputType.number,
      focusNode: widget.phoneCodeFocusNode,
      disabledBorder: Theme.of(context).myStyles.inputBorderDisable,
      color: Theme.of(context).myColors.input,
      focusedBorder: Theme.of(context).myStyles.inputBorderFocus,
      enabledBorder: Theme.of(context).myStyles.inputBorder,
      style: Theme.of(context).myStyles.inputText,
      hintStyle: Theme.of(context).myStyles.inputHint,
      hintText: S.of(context).inputPhoneCodeHintText,
      suffixIcon: codeState == SendCodeState.toBeSend
        ? builderInputButton(
            onPressed: codeState == SendCodeState.toBeSend ? () async {
              widget.onSendCodeBefore?.call();
              await Global.to.myDio?.post(ApiPath.base.sendSms,
                onSuccess: (code, msg, results) async {
                  startTimer();
                  showMySnack(child: Text(msg));
                  widget.onSendCodeSuccess?.call();
                  // _updateSendCodeState(
                  //   state: SendCodeState.waiting,
                  //   ref: ref,
                  // );
                },
                data: {
                  'phone': widget.accountTextController.text,
                },
                onError: (response) async {
                  showResponseError(response);
                  // _updateSendCodeState(
                  //   state: SendCodeState.toBeSend,
                  //   ref: ref,
                  // );
                  widget.onSendCodeError?.call();
                },
              );
            } : null,
          child: codeState == SendCodeState.toBeSend ? sendCodeIcon : CupertinoActivityIndicator(),
        ) : sendCodeIcon,
      prefixIcon: builderInputIcon(
        child: SvgPicture.asset(Theme.of(context).myIcons.inputPhoneCode,
          colorFilter: ColorFilter.mode(Theme.of(context).myColors.iconDefault, BlendMode.srcIn),
        ),
        size: 16,
      ),
    );
  }
}

