import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class LoginViewEnableButtonSendCode extends _$LoginViewEnableButtonSendCode {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewEnableButtonLogin extends _$LoginViewEnableButtonLogin {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewEnableButtonConfirm extends _$LoginViewEnableButtonConfirm {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewEnableButtonRegister extends _$LoginViewEnableButtonRegister {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewRememberPassword extends _$LoginViewRememberPassword {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewHidePassword extends _$LoginViewHidePassword {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewHideRePassword extends _$LoginViewHideRePassword {
  @override
  bool build() => false;

  void set(bool value) => state = value;
}

@riverpod
class LoginViewTimeSendWait extends _$LoginViewTimeSendWait {
  @override
  int build() => 60;

  void set(int value) => state = value;
}

@riverpod
class LoginViewSignState extends _$LoginViewSignState {
  @override
  SignState build() => SignState.loginForPassword;

  void set(SignState value) => state = value;
}

@riverpod
class LoginViewSendCodeState extends _$LoginViewSendCodeState {
  @override
  SendCodeState build() => SendCodeState.toBeSend;

  void set(SendCodeState value) => state = value;
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