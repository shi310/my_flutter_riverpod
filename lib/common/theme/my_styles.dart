part of 'theme.dart';

class MyStyles {
  final MyColors myColors;

  MyStyles({
    required this.myColors,
  });
  
  // 输入框的 hintText 样式
  TextStyle get inputHint => TextStyle(color: myColors.inputHint, fontSize: MyFontSize.body.value);
  // 输入框文本的样式
  TextStyle get inputText => TextStyle(color: myColors.inputText, fontSize: MyFontSize.body.value);
  // 输入框文本的样式
  TextStyle get inputError => TextStyle(color: myColors.error, fontSize: MyFontSize.body.value);
  // 输入框银行卡标题
  TextStyle get inputBankTitle => TextStyle(color: myColors.inputText, fontSize: MyFontSize.body.value);

  // 获取焦点时的输入框边框样式
  InputBorder get inputBorderFocus => OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide(color: myColors.primary, width: 1),
  );

  // 正常情况下的输入框边框样式
  InputBorder get inputBorder => OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide(color: myColors.inputBorder, width: 1),
  );

  // 错误情况下的输入框边框样式
  InputBorder get inputBorderError => OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide(color: myColors.error, width: 1),
  );

  // 输入框禁用时的边框样式
  InputBorder get inputBorderDisable => OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide(color: myColors.inputBorder.withValues(alpha: 0.5), width: 1),
  );
}

enum MyFontSize {
  label(10.0),
  bodySmall(12.0),
  body(14.0),
  bodyLarge(16.0),
  titleSmall(18.0),
  title(20.0),
  titleLarge(22.0),
  headlineSmall(24.0),
  headline(26.0),
  headlineLarge(28.0),
  displaySmall(30.0),
  display(32.0),
  displayLarge(34.0);

  final double value;

  const MyFontSize(this.value);
}