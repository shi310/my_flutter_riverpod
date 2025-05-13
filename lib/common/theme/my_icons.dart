part of 'theme.dart';

class MyIcons {
  final Brightness brightness;

  MyIcons({
    required this.brightness,
  });
  
  bool get _isDarkMode => brightness == Brightness.dark;
  
  // svg
  String get logo => 'assets/svg/logo.svg';
  String get customer => 'assets/svg/customer.svg';
  String get customerAvatar => 'assets/images/customer_avatar.png';
  String get defaultAvatar => 'assets/images/avatar_default.png';
  String get right => 'assets/svg/right.svg';
  String get singleChecked => 'assets/svg/single_checked.svg';
  String get singleUncheck => 'assets/svg/single_uncheck.svg';
  String get dataError => 'assets/svg/data_error.svg';
  String get dataEmpty => 'assets/svg/data_empty.svg';
  String get inputClear => 'assets/svg/input_clear.svg';
  String get inputPerson => 'assets/svg/input_person.svg';
  String get inputShow => 'assets/svg/input_show.svg';
  String get inputHide => 'assets/svg/input_hide.svg';
  String get inputPassword => 'assets/svg/input_password.svg';
  String get inputPhone => 'assets/svg/input_phone.svg';
  String get inputPhoneCode => 'assets/svg/input_phone_code.svg';
  String get loginTitleBackgroundLeft => 'assets/svg/login_title_background_left.svg';
  String get loginTitleBackgroundRight => 'assets/svg/login_title_background_right.svg';
  String get helpHot => 'assets/svg/help_hot.svg';

  // 图片
  String get welcome1 => 'assets/images/welcome_1.png';
  String get welcome2 => 'assets/images/welcome_2.png';
  String get loginTitleSelect => 'assets/images/${_isDarkMode ? 'dark' : 'light'}/login_title_select.png';

  // lottie
  String get loading => 'assets/lottie/${_isDarkMode ? 'dark' : 'light'}/loading.zip';
}