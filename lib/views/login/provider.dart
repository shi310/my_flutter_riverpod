import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class LoginViewEnableButtonSendCodeNotifier extends _$LoginViewEnableButtonSendCodeNotifier {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewEnableButtonLoginNotifier extends _$LoginViewEnableButtonLoginNotifier {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewEnableButtonConfirmNotifier extends _$LoginViewEnableButtonConfirmNotifier {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewEnableButtonRegisterNotifier extends _$LoginViewEnableButtonRegisterNotifier {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewRememberPasswordNotifier extends _$LoginViewRememberPasswordNotifier {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewHidePasswordNotifier extends _$LoginViewHidePasswordNotifier {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewHideRePasswordNotifier extends _$LoginViewHideRePasswordNotifier {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewTimeSendWaitNotifier extends _$LoginViewTimeSendWaitNotifier {
  @override
  int build() => 60;

  void set(int value) => state = value;
}

@riverpod
class LoginViewSignStateNotifier extends _$LoginViewSignStateNotifier {
  @override
  SignState build() => SignState.loginForPassword;

  void set(SignState value) => state = value;
}

@riverpod
class LoginViewSendCodeStateNotifier extends _$LoginViewSendCodeStateNotifier {
  @override
  SendCodeState build() => SendCodeState.toBeSend;

  void update(BuildContext context, SendCodeState value) {
    state = value;
    FocusScope.of(context).unfocus();
    final controller = ref.read(loginViewTextEditingControllerNotifierProvider.notifier);
    controller.clearInput();
    controller.resetAccountInput();
    controller.listener();
  }
}

@riverpod
class LoginViewTextEditingControllerNotifier extends _$LoginViewTextEditingControllerNotifier {
  // 账号输入框控制器
  final accountTextController = TextEditingController();
  // 密码输入框控制器
  final passwordTextController = TextEditingController();
  // 重复密码输入框控制器
  final rePasswordTextController = TextEditingController();
  // 手机输入框控制器
  final phoneTextController = TextEditingController();
  // 验证码输入框控制器
  final phoneCodeTextController = TextEditingController();

  @override
  void build() {
    accountTextController.addListener(listener);
    passwordTextController.addListener(listener);
    rePasswordTextController.addListener(listener);
    phoneTextController.addListener(listener);
    phoneCodeTextController.addListener(listener);

    ref.onDispose(() {
      accountTextController.dispose();
      passwordTextController.dispose();
      rePasswordTextController.dispose();
      phoneTextController.dispose();
      phoneCodeTextController.dispose();
    });
  }

  // 清空输入框
  void clearInput() {
    accountTextController.clear();
    phoneTextController.clear();
    passwordTextController.clear();
    rePasswordTextController.clear();
    phoneCodeTextController.clear();
  }

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
}


// 登陆状态
enum SignState {
  loginForPassword,
  loginForCode,
  register,
  forgotPassword,
}

// 验证码状态
enum SendCodeState {
  toBeSend,
  sending,
  waiting,
}