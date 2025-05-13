import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_basic/views/login/provider.dart';

import '../../generated/l10n.dart';
import '../../global.dart';
import '../../public/public.dart';
import '../../../common/common.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(child: Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
      backgroundColor: Theme.of(context).myColors.background,
    ));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    final arguments = CustomerListViewArguments(
      customerType: CustomerType.guest,
    );
    return builderMyAppBarColor(
      context: context,
      color: Theme.of(context).myColors.background.withValues(alpha: 0),
      actions: [builderCustomerButton(arguments: arguments, context: context)],
    );
  }

  Widget _buildBody(BuildContext context) {
    String version = 'v${Global.to.myAppInfo?.version}';

    return SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SvgPicture.asset(Theme.of(context).myIcons.logo),
      const SizedBox(width: double.infinity, height: 4),
      Text('${S.of(context).versionViewVersion} $version'),
      const SizedBox(height: 10),
      _Content(),
    ]));
  }
}

class _Content extends ConsumerStatefulWidget {
  @override
  ConsumerState<_Content> createState() => __ContentState();
}

class __ContentState extends ConsumerState<_Content> {
  // 账号输入框控制器
  final accountTextController = TextEditingController();
  final accountFocusNode = FocusNode();

  // 密码输入框控制器
  final passwordTextController = TextEditingController();
  final passwordFocusNode = FocusNode();

  // 重复密码输入框控制器
  final rePasswordTextController = TextEditingController();
  final rePasswordFocusNode = FocusNode();

  // 手机输入框控制器
  final phoneTextController = TextEditingController();
  final phoneFocusNode = FocusNode();

  // 验证码输入框控制器
  final phoneCodeTextController = TextEditingController();
  final phoneCodeFocusNode = FocusNode();

  // 网易人机验证码业务ID
  HumanVerificationModel humanVerificationModel = HumanVerificationModel();


  // 时间控制器-发送验证码
  Timer? timerSendCodeWaiting;
  // 本地读取的账号
  String? accountCache;
  // 本地读取的手机号
  String? phoneCache;
  // 本地读取的邮箱
  String? emailCache;

  @override
  void initState() {
    accountTextController.addListener(listener);
    phoneTextController.addListener(listener);
    passwordTextController.addListener(listener);
    rePasswordTextController.addListener(listener);
    phoneCodeTextController.addListener(listener);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      showMyLoading();
      await Future.wait([
        // 获取本地账号
        getAccount(),
      ]);
      hideMyLoading();
    });
    super.initState();
  }

  @override
  void dispose() {
    accountTextController.removeListener(listener);
    phoneTextController.removeListener(listener);
    passwordTextController.removeListener(listener);
    rePasswordTextController.removeListener(listener);
    phoneCodeTextController.removeListener(listener);
    super.dispose();
  }

  // 获取人机验证业务ID
  Future<void> getHumanVerificationKey() async {
    if (humanVerificationModel.captchaId == null) {
      showMyLoading();
      final captcha = await ref.read(humanVerificationProvider.future);
      humanVerificationModel = captcha;
      hideMyLoading();
    }
  }

  // 更新发送验证码按钮的状态
  void updateSendCodeState(SendCodeState state) {
    final loginViewSendCodeState = ref.read(loginViewSendCodeStateProvider.notifier);
    loginViewSendCodeState.set(state);
  }

  // 更新登陆状态
  void updateSignState(SignState state) {
    final loginViewSignState = ref.read(loginViewSignStateProvider.notifier);
    loginViewSignState.set(state);
    FocusScope.of(context).unfocus();
    clearInput();
    resetAccountInput();
    listener();
  }

  // 清空输入框
  void clearInput() {
    accountTextController.clear();
    phoneTextController.clear();
    passwordTextController.clear();
    rePasswordTextController.clear();
    phoneCodeTextController.clear();
  }

  // 发送验证码
  Future<void> sendPhoneCode() async {
    updateSendCodeState(SendCodeState.sending);

    await Global.to.myDio?.post(ApiPath.base.sendSms,
      onSuccess: (code, msg, results) async {
        startTimer();
        showMySnack(child: Text(msg));
        updateSendCodeState(SendCodeState.waiting);
      },
      data: {
        'phone': phoneTextController.text,
      },
      onError: (response) async {
        showResponseError(response);
        updateSendCodeState(SendCodeState.toBeSend);
      },
    );
  }

  // 开始发送验证码倒计时
  void startTimer() {
    final timeSendWait = ref.read(loginViewTimeSendWaitProvider.notifier);
    stopTimer();
    timeSendWait.set(60);
    timerSendCodeWaiting = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      final timeSendWaitTemp = ref.read(loginViewTimeSendWaitProvider);
      timeSendWait.set(timeSendWaitTemp - 1);
      if (timeSendWaitTemp <= 0) {
        stopTimer();
        updateSendCodeState(SendCodeState.toBeSend);
      }
    });
  }

  // 停止倒计时
  void stopTimer() {
    timerSendCodeWaiting?.cancel();
    timerSendCodeWaiting = null;
    ref.read(loginViewTimeSendWaitProvider.notifier).set(60);
  }

  // 忘记密码的业务逻辑
  // 请求接口啥的
  Future<void> forgetPassword() async {
    showMyLoading();
    await Global.to.myDio?.post(ApiPath.base.forgetPassword,
      onSuccess: (code, msg, data) async {
        updateSignState(SignState.loginForPassword);
        MyAlert.showSnack(child: Text(msg));
      },
      data: {
        "phone": phoneTextController.text,
        "newPassword": passwordTextController.text.aesEncrypt(MyConfig.key.aesKey),
        "reNewPassword": rePasswordTextController.text.aesEncrypt(MyConfig.key.aesKey),
        "verificationCode": phoneCodeTextController.text,
      },
      onError: (response) async {
        showResponseError(response);
      }
    );
    hideMyLoading();
  }

  // 输入框监听
  void listener() {
    final loginViewEnableButtonLogin = ref.read(loginViewEnableButtonLoginProvider.notifier);
    final loginViewEnableButtonRegister = ref.read(loginViewEnableButtonRegisterProvider.notifier);
    final loginViewEnableButtonConfirm = ref.read(loginViewEnableButtonConfirmProvider.notifier);
    final loginViewEnableButtonSendCode = ref.read(loginViewEnableButtonSendCodeProvider.notifier);

    // 发送验证码按钮是否启用
    if (phoneTextController.text.isEmpty) {
      loginViewEnableButtonSendCode.set(false);
    } else {
      loginViewEnableButtonSendCode.set(true);
    }

    final signState = ref.read(loginViewSignStateProvider);

    if (signState == SignState.loginForPassword) {
      if (accountTextController.text.isEmpty || passwordTextController.text.isEmpty) {
        loginViewEnableButtonLogin.set(false);
      } else {
        loginViewEnableButtonLogin.set(true);
      }
    } else if (signState == SignState.loginForCode) {
      if (phoneTextController.text.isEmpty || phoneCodeTextController.text.isEmpty) {
        loginViewEnableButtonLogin.set(false);
      } else {
        loginViewEnableButtonLogin.set(true);
      }
    } else if (signState == SignState.register) {
      if (accountTextController.text.isEmpty || passwordTextController.text.isEmpty || rePasswordTextController.text.isEmpty || phoneTextController.text.isEmpty || phoneCodeTextController.text.isEmpty) {
        loginViewEnableButtonRegister.set(false);
      } else {
        loginViewEnableButtonRegister.set(true);
      }
    } else if (signState == SignState.forgotPassword) {
      if (passwordTextController.text.isEmpty || rePasswordTextController.text.isEmpty || phoneTextController.text.isEmpty || phoneCodeTextController.text.isEmpty) {
        loginViewEnableButtonConfirm.set(false);
      } else {
        loginViewEnableButtonConfirm.set(true);
      }
    }
  }

  // 获取储存的账号
  Future<void> getAccount() async {
    final account = await MyCache.getFile(MyConfig.shard.accountKey);
    if (account != null) {
      accountCache = await account.readAsString();
      accountCache = accountCache?.aesDecrypt(MyConfig.key.aesKey);
    }

    final phone = await MyCache.getFile(MyConfig.shard.phoneKey);
    if (phone != null) {
      phoneCache = await phone.readAsString();
      phoneCache = phoneCache?.aesDecrypt(MyConfig.key.aesKey);
    }
    resetAccountInput();
  }

  // 重置账号输入框
  void resetAccountInput() async {
    final signState = ref.read(loginViewSignStateProvider);
    final loginViewEnableButtonSendCode = ref.read(loginViewEnableButtonSendCodeProvider);

    if (loginViewEnableButtonSendCode && [SignState.loginForPassword, SignState.loginForCode].contains(signState)) {
      if (accountCache != null) {
        accountTextController.text = accountCache!;
      }

      if (phoneCache != null) {
        phoneTextController.text = phoneCache!;
      }
    }
  }

  // 密码登陆
  Future<void> loginForPassword(String validate) async {
    showMyLoading();
    await Global.to.myDio?.post<UserInfoModel>(ApiPath.base.accountLogin,
      onSuccess: (code, msg, data) async {
        Global.to.userInfo = data;

        // 是否保存账号信息
        if (ref.read(loginViewRememberPasswordProvider)) {
          MyCache.putFile(MyConfig.shard.accountKey, accountTextController.text.aesEncrypt(MyConfig.key.aesKey),
            time: const Duration(days: 365),
          );
        } else {
          MyCache.removeFile(MyConfig.shard.accountKey);
        }

        goHomeView();
      },
      onModel: (json) => UserInfoModel.fromJson(json),
      data: {
        "username": accountTextController.text,
        "password": passwordTextController.text.aesEncrypt(MyConfig.key.aesKey),
        'validate': validate,
      },
      onError: (response) async {
        showResponseError(response);
      }
    );
    hideMyLoading();
  }

  // 去首页
  void goHomeView() {
    context.goNamed(MyRouters.homeView.name);
    saveUserInfo();
  }

  // 储存 token
  void saveUserInfo() {
    MyCache.putFile(MyConfig.shard.userInfo,Global.to.userInfo.toJson().toJsonString().aesEncrypt(MyConfig.key.aesKey),
      time: const Duration(days: 5),
    );
  }

  // 验证码登陆
  Future<void> loginForCode(String validate) async {
    showMyLoading();

    await Global.to.myDio?.post<UserInfoModel>(ApiPath.base.phoneLogin,
      onSuccess: (code, msg, data) async {
        Global.to.userInfo = data;

        // 保存手机号码
        if (ref.read(loginViewRememberPasswordProvider)) {
          MyCache.putFile(MyConfig.shard.phoneKey, phoneTextController.text.aesEncrypt(MyConfig.key.aesKey),
            time: const Duration(days: 365),
          );
        } else {
          MyCache.removeFile(MyConfig.shard.phoneKey);
        }

        goHomeView();
      },
      onModel: (json) => UserInfoModel.fromJson(json),
      data: {
        "phone": phoneTextController.text,
        "verificationCode": phoneCodeTextController.text,
        'validate': validate,
      },
      onError: (response) async {
        showResponseError(response);
      }
    );

    hideMyLoading();
  }

  // 用户注册
  Future<void> register() async {
    showMyLoading();

    await Global.to.myDio?.post<UserInfoModel>(ApiPath.base.register,
        onSuccess: (code, msg, data) async {
          Global.to.userInfo = data;
          // 告诉 openInstall 注册成功
          // 用于 openInstall 统计注册
          Global.to.openInstallFlutterPlugin?.reportRegister();
          goHomeView();
        },
        onModel: (json) => UserInfoModel.fromJson(json),
        data: {
          'username': accountTextController.text,
          'phone': phoneTextController.text,
          'password': passwordTextController.text.aesEncrypt(MyConfig.key.aesKey),
          'rePassword': rePasswordTextController.text.aesEncrypt(MyConfig.key.aesKey),
          'verificationCode': phoneCodeTextController.text,
        },
        onError: (response) async {
          showResponseError(response);
        }
    );

    hideMyLoading();
  }

  @override
  Widget build(BuildContext context) {
    // 账号输入框
    final inputAccount = MyInput(
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

    final isHidePassword = ref.watch(loginViewHidePasswordProvider);
    // 显示 / 隐藏密码图标
    final showPasswordIcon = builderInputButton(
      onPressed: () {
        final isHidePasswordRead = ref.read(loginViewHidePasswordProvider);
        ref.read(loginViewHidePasswordProvider.notifier).set(!isHidePasswordRead);
      },
      child: builderInputIcon(
        child: SvgPicture.asset(isHidePassword ? Theme.of(context).myIcons.inputShow : Theme.of(context).myIcons.inputHide,
          colorFilter: ColorFilter.mode(Theme.of(context).myColors.inputBorder, BlendMode.srcIn),
        ),
        size: 16,
      ),
    );

    // 密码输入框
    final inputPassword = MyInput(
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
      hintText: S.of(context).inputPasswordHintText,
      suffixIcon: showPasswordIcon,
      prefixIcon: builderInputIcon(
        child: SvgPicture.asset(Theme.of(context).myIcons.inputPassword,
          colorFilter: ColorFilter.mode(Theme.of(context).myColors.iconDefault, BlendMode.srcIn),
        ),
        size: 19,
      ),
    );

    final isHideRePassword = ref.watch(loginViewHideRePasswordProvider);
    // 显示 / 隐藏重复密码图标
    final showRePasswordIcon = builderInputButton(
      onPressed: () {
        final isHideRePasswordRead = ref.read(loginViewHideRePasswordProvider);
        ref.read(loginViewHideRePasswordProvider.notifier).set(!isHideRePasswordRead);
      },
      child: builderInputIcon(
        child: SvgPicture.asset(isHideRePassword ? Theme.of(context).myIcons.inputShow : Theme.of(context).myIcons.inputHide,
          colorFilter: ColorFilter.mode(Theme.of(context).myColors.inputBorder, BlendMode.srcIn),
        ),
        size: 16,
      ),
    );

    // 重复密码
    final inputRePassword = MyInput(
      maxLines: 1,
      controller: rePasswordTextController,
      focusNode: rePasswordFocusNode,
      color: Theme.of(context).myColors.input,
      focusedBorder: Theme.of(context).myStyles.inputBorderFocus,
      disabledBorder: Theme.of(context).myStyles.inputBorderDisable,
      keyboardType: TextInputType.emailAddress,
      enabledBorder: Theme.of(context).myStyles.inputBorder,
      obscureText: isHideRePassword,
      style: Theme.of(context).myStyles.inputText,
      hintStyle: Theme.of(context).myStyles.inputHint,
      hintText: S.of(context).inputRePasswordHintText,
      suffixIcon: showRePasswordIcon,
      prefixIcon: builderInputIcon(
        child: SvgPicture.asset(Theme.of(context).myIcons.inputPassword,
          colorFilter: ColorFilter.mode(Theme.of(context).myColors.iconDefault, BlendMode.srcIn),
        ),
        size: 19,
      ),
    );

    // 手机号
    final inputPhone = MyInput(
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

    final isEnableButtonSendCode = ref.watch(loginViewEnableButtonSendCodeProvider);
    final timeSendWait = ref.watch(loginViewTimeSendWaitProvider);
    final codeState = ref.watch(loginViewSendCodeStateProvider);

    final sendCodeIcon = IntrinsicWidth(
      child: MyCard(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        margin: EdgeInsets.all(4),
        borderRadius: BorderRadius.circular(8),
        color: codeState == SendCodeState.toBeSend && isEnableButtonSendCode ? Theme.of(context).myColors.secondary : Theme.of(context).myColors.buttonDisable,
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
    final inputPhoneCode = MyInput(
      maxLines: 1,
      controller: phoneCodeTextController,
      keyboardType: TextInputType.number,
      focusNode: phoneCodeFocusNode,
      disabledBorder: Theme.of(context).myStyles.inputBorderDisable,
      color: Theme.of(context).myColors.input,
      focusedBorder: Theme.of(context).myStyles.inputBorderFocus,
      enabledBorder: Theme.of(context).myStyles.inputBorder,
      style: Theme.of(context).myStyles.inputText,
      hintStyle: Theme.of(context).myStyles.inputHint,
      hintText: S.of(context).inputPhoneCodeHintText,
      suffixIcon: codeState == SendCodeState.toBeSend
        ? builderInputButton(
            onPressed: codeState == SendCodeState.toBeSend ? sendPhoneCode : null,
            child: codeState == SendCodeState.toBeSend ? sendCodeIcon : CupertinoActivityIndicator(),
          )
        : sendCodeIcon,
      prefixIcon: builderInputIcon(
        child: SvgPicture.asset(Theme.of(context).myIcons.inputPhoneCode,
          colorFilter: ColorFilter.mode(Theme.of(context).myColors.iconDefault, BlendMode.srcIn),
        ),
        size: 16,
      ),
    );

    final isRememberPassword = ref.watch(loginViewRememberPasswordProvider);

    // 记住密码
    final rememberAccount = MyButton(
      debounceDuration: Duration.zero,
      onPressed: () {
        ref.read(loginViewRememberPasswordProvider.notifier).set(!isRememberPassword);
      },
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        isRememberPassword
          ? SvgPicture.asset(Theme.of(context).myIcons.singleChecked)
          : SvgPicture.asset(Theme.of(context).myIcons.singleUncheck),
        const SizedBox(width: 4),
        Text(S.of(context).loginViewRememberAccount,
          style: TextStyle(
            fontSize: MyFontSize.body.value,
          ),
        )
      ]),
    );

    final isEnableButtonLogin = ref.watch(loginViewEnableButtonLoginProvider);

    // 登陆按钮
    final buttonLogin = SizedBox(
      width: double.infinity,
      child: FilledButton(
        style: FilledButton.styleFrom(
          foregroundColor: Theme.of(context).myColors.onButtonPressed,
        ),
        onPressed: isEnableButtonLogin ? () async {
          FocusScope.of(context).unfocus();
          await getHumanVerificationKey();
          if (humanVerificationModel.captchaId != null) {
            showMyBlock();
            showCaptcha(
              language: ref.read(languageNotifierProvider).languageCode,
              captchaId: humanVerificationModel.captchaId ?? '',
              onSuccess: (value) async {
                if (value.isNotEmpty) {
                  ref.read(loginViewSignStateProvider) == SignState.loginForPassword
                    ? loginForPassword(value)
                    : loginForCode(value);
                }
              },
              onError: () {
                hideMyBlock();
              },
              onClose: () {
                hideMyBlock();
              }
            );
          }
        } : null,
        child: Text(S.of(context).loginViewLogin),
      ),
    );

    final isEnableButtonRegister = ref.watch(loginViewEnableButtonRegisterProvider);

    // 注册按钮
    final buttonRegister = SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: isEnableButtonRegister ? () async {
          FocusScope.of(context).unfocus();
          await getHumanVerificationKey();
          if (humanVerificationModel.captchaId != null) {
            showMyBlock();
            showCaptcha(
              language: ref.read(languageNotifierProvider).languageCode,
              captchaId: humanVerificationModel.captchaId ?? '',
              onSuccess: (value) async {
                if (value.isNotEmpty) {
                  register();
                }
              },
              onError: () {
                hideMyBlock();
              },
              onClose: () {
                hideMyBlock();
              }
            );
          }
        }: null,
        child: Text(S.of(context).loginViewRegister, style: TextStyle(
          color: Theme.of(context).myColors.onButtonPressed,
        )),
      ),
    );

    final isEnableButtonConfirm = ref.watch(loginViewEnableButtonConfirmProvider);

    // 确认按钮
    final buttonConfirm = SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: isEnableButtonConfirm ? () async {
          FocusScope.of(context).unfocus();
          await getHumanVerificationKey();
          if (humanVerificationModel.captchaId != null) {
            showMyBlock();
            showCaptcha(
                language: ref.read(languageNotifierProvider).languageCode,
                captchaId: humanVerificationModel.captchaId ?? '',
                onSuccess: (value) async {
                  if (value.isNotEmpty) {
                    forgetPassword();
                  }
                },
                onError: () {
                  hideMyBlock();
                },
                onClose: () {
                  hideMyBlock();
                }
            );
          }
        } : null,
        child: Text(S.of(context).confirm, style: TextStyle(
          color: Theme.of(context).myColors.onButtonPressed,
        )),
      ),
    );

    // 返回登陆按钮
    final buttonGoBackLogin = SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).myColors.textDefault,
        ),
        onPressed: () {
          updateSignState(SignState.loginForPassword);
        },
        child: Text(S.of(context).loginViewGoBackLogin),
      ),
    );

    // 密码登录按钮
    final buttonLoginForPassword = TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Theme.of(context).myColors.textDefault,
      ),
      onPressed: () {
        updateSignState(SignState.loginForPassword);
      },
      child: Text(S.of(context).loginViewLoginForPassword),
    );

    // 验证码登陆按钮
    final buttonLoginForCode = TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Theme.of(context).myColors.textDefault,
      ),
      onPressed: () {
        updateSignState(SignState.loginForCode);
      },
      child: Text(S.of(context).loginViewLoginForCode),
    );

    // 忘记密码按钮
    final buttonForgetPassword = TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Theme.of(context).myColors.textDefault,
      ),
      onPressed: () {
        updateSignState(SignState.forgotPassword);
      },
      child: Text(S.of(context).loginViewForgotPassword),
    );

    final boxLoginForPassword = Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      inputAccount,
      const SizedBox(height: 4),
      inputPassword,
      const SizedBox(height: 8),
      rememberAccount,
      const SizedBox(height: 16),
      buttonLogin,
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        buttonLoginForCode,
        buttonForgetPassword,
      ]),
    ]);

    final boxLoginForCode = Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      inputPhone,
      const SizedBox(height: 4),
      inputPhoneCode,
      const SizedBox(height: 8),
      rememberAccount,
      const SizedBox(height: 16),
      buttonLogin,
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        buttonLoginForPassword,
        buttonForgetPassword,
      ]),
    ]);

    final boxForgotPassword = Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      inputPhone,
      const SizedBox(height: 4),
      inputPhoneCode,
      const SizedBox(height: 4),
      inputPassword,
      const SizedBox(height: 4),
      inputRePassword,
      const SizedBox(height: 16),
      buttonConfirm,
      buttonGoBackLogin,
    ]);

    final boxRegister = Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      inputAccount,
      const SizedBox(height: 4),
      inputPassword,
      const SizedBox(height: 4),
      inputRePassword,
      const SizedBox(height: 4),
      inputPhone,
      const SizedBox(height: 4),
      inputPhoneCode,
      const SizedBox(height: 16),
      buttonRegister,
    ]);

    final signState = ref.watch(loginViewSignStateProvider);

    return MyCard(
      margin: const EdgeInsets.all(20),
      color: Theme.of(context).myColors.cardBackground,
      borderRadius: BorderRadius.circular(20),
      child: Column(children: [
        _BuildTitle(
          onLoginStateChange: (signState) {
            updateSignState(signState);
          },
          onRegisterStateChange: (signState) {
            updateSignState(signState);
          },
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: signState == SignState.register
            ? boxRegister
            : signState == SignState.loginForCode
              ? boxLoginForCode
              : signState == SignState.forgotPassword
                ? boxForgotPassword
                : boxLoginForPassword,
        ),
      ]),
    );
  }
}

class _BuildTitle extends ConsumerWidget {
  const _BuildTitle({
    required this.onLoginStateChange,
    required this.onRegisterStateChange,
  });

  final void Function(SignState) onLoginStateChange;
  final void Function(SignState) onRegisterStateChange;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signState = ref.watch(loginViewSignStateProvider);
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