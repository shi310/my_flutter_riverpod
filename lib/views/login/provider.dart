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