part of 'theme.dart';

class MyColors {
  MyColors({
    required this.brightness,
  });

  final Brightness brightness;

  bool get _isDarkMode => brightness == Brightness.dark;

  // 主色-固定色
  Color get primary => _isDarkMode ? const Color(0xFF586BF9) : const Color(0xFF586BF9);
  // 主色上面的颜色
  Color get onPrimary => _isDarkMode ? const Color(0xFFFFFFFF) :  const Color(0xFFFFFFFF);
  // 背景色 / 主题色
  Color get background => _isDarkMode ? const Color(0xFF151516) : const Color(0xFFF5F8FC);
  // 背景上的反色，例如文字
  Color get onBackground => _isDarkMode ? const Color(0xFFF5F8FC) : const Color(0xFF333334);
  // 错误的颜色
  Color get error => _isDarkMode ? const Color(0xFFDF0000) : const Color(0xFFDF0000);
  // 待确认
  Color get onPending => _isDarkMode ? const Color(0xFFFFA100) : const Color(0xFFFFA100);
  // 订单超时
  Color get onTimeout => _isDarkMode ? const Color(0xFFB238C5) : const Color(0xFFB238C5);

  // 待收款
  Color get onReceiving => _isDarkMode ? const Color(0xFFC56538) : const Color(0xFFC56538);

  // 取消
  Color get onCancel => _isDarkMode ? const Color(0xFF999999) : const Color(0xFF999999);
  // 错误颜色上面的颜色
  Color get onError => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFFFFFFFF);
  // 错误的颜色
  Color get black => _isDarkMode ? const Color(0xFF000000) : const Color(0xFF000000);
  // 错误颜色上面的颜色
  Color get white => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFFFFFFFF);
  // 辅助色
  Color get secondary => _isDarkMode ? const Color(0xFF25A812) : const Color(0xFF25A812);
  // 辅助色上面的颜色
  Color get onSecondary => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFFFFFFFF);

  // 卡片背景颜色
  Color get cardBackground => _isDarkMode ? const Color(0xFF232325) : const Color(0xFFFFFFFF);
  // 卡片上的文字颜色
  Color get onCardBackground => _isDarkMode ? const Color(0xFFF5F8FC) : const Color(0xFF333334);
  // banner卡片的边框
  Color get carouselBorder => _isDarkMode ? const Color(0xFF434345) : const Color(0xFFFFFFFF);
  // loading背景颜色
  Color get loadingBackground => _isDarkMode ? const Color(0x53232324) : const Color(0x53232324);
  // itemCard 背景
  Color get itemCardBackground => _isDarkMode ? const Color(0xFF2C2C2E) : const Color(0xFFF3F4F7);
  Color get banksTag => _isDarkMode ? const Color(0xFF3D3D41) : const Color(0xFFE6E6E6);

  // 输入框边框的颜色
  Color get inputBorder => _isDarkMode ? const Color(0xFF434345) : const Color(0xFFD1D1D1);
  // 输入框左侧图标的颜色
  Color get inputPrefixIcon => _isDarkMode ? const Color(0xFFF5F8FC) : const Color(0xFF333334);
  // 输入框左侧图标的颜色
  Color get inputSuffixIcon => _isDarkMode ? const Color(0xFF8E8E92) : const Color(0xFFD1D1D1);
  // 输入框文字颜色
  Color get inputText => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF000000);
  // 输入框提示文本颜色
  Color get inputHint => _isDarkMode ? const Color(0xFF8E8E92) : const Color(0xFFD1D1D1);
  // 输入框添加银行卡
  Color get inputBank => _isDarkMode ? const Color(0xFF2C2C2E) : const Color(0xFFF3F4F7);
  // 输入框背景
  Color get input => _isDarkMode ? const Color(0x002C2C2E) : const Color(0x00F3F4F7);

  // 图标颜色
  Color get iconDefault => _isDarkMode ? const Color(0xFFF5F8FC) : const Color(0xFF333334);
  Color get iconGrey => _isDarkMode ? const Color(0xFF8E8E92) : const Color(0xFFD1D1D1);
  Color get iconCopy => _isDarkMode ? const Color(0xFF333334) : const Color.fromARGB(255, 161, 162, 165);

  // 文本颜色
  Color get textDefault => _isDarkMode ? const Color(0xFFD1D1D1) : const Color(0xFF666666);
  Color get textBottomUnselect => _isDarkMode ? const Color(0xFF85879A) : const Color(0xFFB7BACE);

  // 按钮禁用的背景颜色
  Color get buttonDisable => _isDarkMode ? const Color(0xFF4F4F53) : const Color(0xFFD1D1D1);
  // 取消按钮的背景颜色
  Color get buttonCancel => _isDarkMode ? const Color(0xFF4F4F53) : const Color(0xFF8796C6);
  // 取消按钮的文字颜色
  Color get onButtonCancel => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFFFFFFFF);
  // 按钮禁用状态下的文字颜色
  Color get onButtonDisable => _isDarkMode ? const Color(0xFFAFAFB9) : const Color(0xFF828489);
  // 按钮按下时的背景颜色
  Color get buttonPressed =>  _isDarkMode ? const Color(0xFF7800F8) : const Color(0xFF7800F8);
  // 按钮按下时，按钮上面的颜色
  Color get onButtonPressed => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFFFFFFFF);
  // 按钮禁用的背景颜色
  Color get buttonUnselect => _isDarkMode ? const Color(0xFF4F4F53) : const Color(0xFFF3F4F7);
  // 按钮禁用状态下的文字颜色
  Color get onButtonUnselect => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF000000);

  // 我的页面，编辑按钮背景色
  Color get mineViewEdit => _isDarkMode ? const Color(0xFFDCE0F8) : const Color(0xFFF3F4F7);

  // appBar 背景渐变色 - 起始位置
  Color get appBarGradientStart => _isDarkMode ? const Color(0xFF3A3A4B) : const Color(0xFFD7E2FF);
  // appBar 背景渐变色 - 终止位置
  Color get appBarGradientEnd => _isDarkMode ? const Color(0xFF151516) : const Color(0xFFF5F8FC);
  // appBar 上面的文字颜色
  Color get onaAppBar => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF000000);

  // snackBar 背景色
  Color get snackBarBackground => _isDarkMode ? const Color(0xFF1B1B1E) : const Color(0xFFFFFFFF);
  // appBar 背景渐变色 - 终止位置
  Color get onSnackBarBackground => _isDarkMode ? const Color(0xFFFFFFFF) : const Color(0xFF333334);

  // 弹窗背景色
  Color get dialogBackground => _isDarkMode ? const Color(0xFFF5F8FC) : const Color(0xFF333334);
  // 弹窗文字颜色
  Color get onDialogBackground => _isDarkMode ? const Color(0xFF333334) : const Color(0xFFF5F8FC);

  // 底部导航栏的背景颜色
  Color get bottomNavigationBackground => _isDarkMode ? const Color(0xFF1F1F21) : const Color(0xFFFFFFFF);
}
