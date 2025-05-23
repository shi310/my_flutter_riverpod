import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_basic/common/provider/alive/my_app_info.dart';

import '../../generated/l10n.dart';
import '../../global.dart';
import '../../public/public.dart';
import '../../../common/common.dart';
import '../widgets/index.dart';
import 'provider.dart';

part 'widgets/button_remember_password.dart';
part 'widgets/button_login.dart';
part 'widgets/button_register.dart';
part 'widgets/button_forgot_password.dart';
part 'widgets/input_box_title.dart';

part 'logics/forgot_password.dart';
part 'logics/login_for_password.dart';
part 'logics/go_home_view.dart';
part 'logics/login_for_code.dart';
part 'logics/register.dart';

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
    final myAppInfo = Global.to.providerContainer.read(myAppInfoNotifierProvider);
    String version = 'v${myAppInfo?.version}';

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
  ConsumerState<_Content> createState() => _ContentState();
}

class _ContentState extends ConsumerState<_Content> {
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
    final signState = ref.read(loginViewSignStateNotifierProvider);

    if (signState == SignState.loginForPassword) {
      if (accountCache != null) {
        accountTextController.text = accountCache!;
        ref.read(loginViewRememberPasswordNotifierProvider.notifier).set(true);
      } else {
        ref.read(loginViewRememberPasswordNotifierProvider.notifier).set(false);
      }
    }

    if (signState == SignState.loginForCode) {
      if (phoneCache != null) {
        phoneTextController.text = phoneCache!;
        ref.read(loginViewRememberPasswordNotifierProvider.notifier).set(true);
      } else {
        ref.read(loginViewRememberPasswordNotifierProvider.notifier).set(false);
      }
    }
  }

  // 清空输入框
  void clearInput() {
    accountTextController.clear();
    phoneTextController.clear();
    passwordTextController.clear();
    rePasswordTextController.clear();
    phoneCodeTextController.clear();
  }

  // 更新登陆状态
  void updateSignState(SignState state) {
    final loginViewSignState = ref.read(loginViewSignStateNotifierProvider.notifier);
    loginViewSignState.set(state);

    FocusScope.of(context).unfocus();

    clearInput();
    resetAccountInput();
    listener();
  }

  // 登陆逻辑
  void login(String validate) {
    ref.read(loginViewSignStateNotifierProvider) == SignState.loginForPassword
        ? _loginForPassword(
        validate: validate,
        username: accountTextController.text,
        password: passwordTextController.text,
        isRememberPassword: ref.read(loginViewRememberPasswordNotifierProvider),
        context: context,
        account: accountTextController.text
    )
        : _loginForCode(
        validate: validate,
        phone: phoneTextController.text,
        verificationCode: phoneCodeTextController.text,
        isRememberPassword: ref.read(loginViewRememberPasswordNotifierProvider),
        context: context,
        account: accountTextController.text
    );
  }

  void updateSendCodeState(SendCodeState state) {
    final loginViewSendCodeState = ref.read(loginViewSendCodeStateNotifierProvider.notifier);
    loginViewSendCodeState.set(state);
  }

  // 输入框监听
  void listener() {
    final loginViewEnableButtonLogin = ref.read(loginViewEnableButtonLoginNotifierProvider.notifier);
    final loginViewEnableButtonRegister = ref.read(loginViewEnableButtonRegisterNotifierProvider.notifier);
    final loginViewEnableButtonConfirm = ref.read(loginViewEnableButtonConfirmNotifierProvider.notifier);
    final loginViewEnableButtonSendCode = ref.read(loginViewEnableButtonSendCodeNotifierProvider.notifier);
    final signState = ref.read(loginViewSignStateNotifierProvider);

    // 发送验证码按钮是否启用
    if (phoneTextController.text.isEmpty) {
      loginViewEnableButtonSendCode.set(false);
    } else {
      loginViewEnableButtonSendCode.set(true);
    }

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

  @override
  Widget build(BuildContext context) {
    // 账号输入框
    final inputAccount = InputAccount(
      accountTextController: accountTextController,
      accountFocusNode: accountFocusNode,
    );

    // 密码输入框
    final inputPassword = InputPassword(
      passwordTextController: passwordTextController,
      passwordFocusNode: passwordFocusNode,
      hintText: S.of(context).inputPasswordHintText,
    );

    // 重复密码
    final inputRePassword = InputPassword(
      passwordTextController: rePasswordTextController,
      passwordFocusNode: rePasswordFocusNode,
      hintText: S.of(context).inputRePasswordHintText,
    );

    // 手机号
    final inputPhone = InputPhone(
      phoneTextController: phoneTextController,
      phoneFocusNode: phoneFocusNode,
    );
    
    // 发送手机验证码
    final inputPhoneCode = InputSendCode(
      phoneCodeTextController: phoneCodeTextController,
      accountTextController: accountTextController,
      phoneCodeFocusNode: phoneCodeFocusNode,
      onSendCodeBefore: () => updateSendCodeState(SendCodeState.sending),
      onSendCodeSuccess: () => updateSendCodeState(SendCodeState.waiting,),
      onSendCodeError: () => updateSendCodeState(SendCodeState.toBeSend),
    );

    // 记住密码
    final rememberAccount = _ButtonRememberPassword();

    // 登陆按钮
    final buttonLogin = _ButtonLogin(
      onPressed: login,
    );

    // 注册按钮
    final buttonRegister = _ButtonRegister(
      onPressed: (value) => _register(
        context: context,
        username: accountTextController.text,
        password: passwordTextController.text,
        rePassword: rePasswordTextController.text,
        phone: phoneTextController.text,
        verificationCode: phoneCodeTextController.text,
      ),
    );

    // 忘记密码的确认按钮
    final buttonConfirm = _ButtonForgotPassword(
      onPressed: (value) => _forgotPassword(
        onSuccess: (state) => updateSignState(state),
        phone: phoneTextController.text,
        password: passwordTextController.text,
        rePassword: rePasswordTextController.text,
        verificationCode: phoneCodeTextController.text,
      ),
    );

    // 返回登陆按钮: 只是页面跳转，非登陆逻辑
    final buttonGoBackLogin = TextButtonLong(
      onPressed: () {
        updateSignState(SignState.loginForPassword);
      },
      text: S.of(context).loginViewGoBackLogin,
    );

    // 密码登录按钮
    final buttonLoginForPassword = TextButtonShort(
      onPressed: () {
        updateSignState(SignState.loginForPassword);
      },
      text: S.of(context).loginViewLoginForPassword,
    );

    // 验证码登陆按钮
    final buttonLoginForCode = TextButtonShort(
      onPressed: () {
        updateSignState(SignState.loginForCode);
      },
      text: S.of(context).loginViewLoginForCode,
    );

    // 忘记密码按钮
    final buttonForgetPassword = TextButtonShort(
      onPressed: () {
        updateSignState(SignState.forgotPassword);
      },
      text: S.of(context).loginViewForgotPassword,
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

    final signState = ref.watch(loginViewSignStateNotifierProvider);

    return MyCard(
      margin: const EdgeInsets.all(20),
      color: Theme.of(context).myColors.cardBackground,
      borderRadius: BorderRadius.circular(20),
      child: Column(children: [
        _InputBoxTitle(
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