part of 'router.dart';

class MyRoutersModel {
  final String path;
  final String name;

  const MyRoutersModel(this.path, this.name);
}

class MyRouters {
  // index
  static const indexView = MyRoutersModel('/', 'index');

  // unknown
  static const unknownView = MyRoutersModel('/unknown', 'unknown');

  // welcome
  static const welcomeView = MyRoutersModel('/welcome', 'welcome');

  // webview
  static const webView = MyRoutersModel('/web', 'web');

  // 二维码扫描
  static const scanView = MyRoutersModel('/scan', 'scan');

  // 登录界面
  static const loginView = MyRoutersModel('/login', 'login');

  // 主页面
  static const homeView = MyRoutersModel('/home', 'home');

  // 活体检测 / 人脸识别
  static const faceVerifiedView = MyRoutersModel('/face_verified', 'face_verified');

  // 客服列表
  static const customerListView = MyRoutersModel('/customer_list', 'customer_list');
  static const customerFaqListView = MyRoutersModel('/customer_faq_list', 'customer_faq_list');
  static const customerFaqInfoView = MyRoutersModel('/customer_faq_info', 'customer_faq_info');
  static const customerChatView = MyRoutersModel('/customer_chat', 'customer_chat');

  // 闪兑详情
  static const flashOrderInfoView = MyRoutersModel('/flash_order_info', 'flash_order_info');
  static const flashOrderHistoryView = MyRoutersModel('/flash_order_history', 'flash_order_history');

  // 个人资料
  static const personalInfoView = MyRoutersModel('/personal_info', 'personal_info');

  // 修改昵称
  static const editNickNameView = MyRoutersModel('/edit_nick_name', 'edit_nick_name');

  // 活动页面
  static const tutorialView = MyRoutersModel('/tutorial', 'tutorial');

  // 钱包历史记录
  static const walletHistoryView = MyRoutersModel('/wallet_history', 'wallet_history');

  // 优惠活动列表
  static const promotionListView = MyRoutersModel('/promotion_list', 'promotion_list');

  // 优惠活动信息页面
  static const promotionInfoView = MyRoutersModel('/promotion_info', 'promotion_info');

  // 设置页面
  static const settingsView = MyRoutersModel('/settings', 'settings');

  // 账户管理
  static const walletManagerView = MyRoutersModel('/wallet_manager', 'wallet_manager');

  // 新增银行卡
  static const walletAddView = MyRoutersModel('/wallet_add', 'wallet_add');

  // 银行卡列表
  static const banksView = MyRoutersModel('/banks', 'banks');

  // 安全设置页面
  static const securityView = MyRoutersModel('/security', 'security');

  // 修改登录密码
  static const passwordSignView = MyRoutersModel('/password_sign', 'password_sign');

  // 修改钱包资金密码
  static const passwordWalletView = MyRoutersModel('/password_wallet', 'password_wallet');

  // 常见问题页面
  static const faqView = MyRoutersModel('/faq', 'faq');

  // 版本页面
  static const versionView = MyRoutersModel('/version', 'version');

  // 通知页面
  static const notifyView = MyRoutersModel('/notify', 'notify');

  // 实名认证页面
  static const realNameVerifiedView = MyRoutersModel('/real_name_verified', 'real_name_verified');

  // 认证结果页面
  static const verifiedResultView = MyRoutersModel('/verified_result', 'verified_result');

  // 买单
  static const buyOrderView = MyRoutersModel('/buy_order', 'buy_order');
  static const buyOrderInfoView = MyRoutersModel('/buy_order_info', 'buy_order_info');
  static const buyOrderListView = MyRoutersModel('/buy_order_list', 'buy_order_list');

  // 卖单
  static const sellOrderView = MyRoutersModel('/sell_order', 'sell_order');
  static const sellOrderInfoView = MyRoutersModel('/sell_order_info', 'sell_order_info');
  static const sellOrderListView = MyRoutersModel('/sell_order_list', 'sell_order_list');

  // 转账
  static const transferView = MyRoutersModel('/transfer', 'transfer');
  static const transferHistoryView = MyRoutersModel('/transfer_history', 'transfer_history');
  static const transferCoinView = MyRoutersModel('/transfer_coin', 'transfer_coin');

  // 快捷买币
  static const buyCoinsQuicklyView = MyRoutersModel('/quick_buy_coins', 'quick_buy_coins');

  static const qrcodeView = MyRoutersModel('/qrcode', 'qrcode');

  static const payView = MyRoutersModel('/pay', 'pay');

  // 活动页面
  static const activitySignInView = MyRoutersModel('/activity_sign_in', 'activity_sign_in');
  static const activityTradePrice = MyRoutersModel('/activity_trade_price', 'activity_trade_price');
  static const chatFaqInfoView = MyRoutersModel('/chat_faq_info', 'chat_faq_info');
  static const chatFaqListView = MyRoutersModel('/chat_faq_list', 'chat_faq_list');
}