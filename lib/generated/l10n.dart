// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Send Verification Code`
  String get sendCode {
    return Intl.message(
      'Send Verification Code',
      name: 'sendCode',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message('Send', name: 'send', desc: '', args: []);
  }

  /// `Album`
  String get album {
    return Intl.message('Album', name: 'album', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Confirm Later`
  String get confirmLater {
    return Intl.message(
      'Confirm Later',
      name: 'confirmLater',
      desc: '',
      args: [],
    );
  }

  /// `Go to Confirm`
  String get goConfirm {
    return Intl.message('Go to Confirm', name: 'goConfirm', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `No Data Available`
  String get dataEmpty {
    return Intl.message(
      'No Data Available',
      name: 'dataEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Failed to Load Data`
  String get dataError {
    return Intl.message(
      'Failed to Load Data',
      name: 'dataError',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Reply`
  String get reply {
    return Intl.message('Reply', name: 'reply', desc: '', args: []);
  }

  /// `Save Image to Gallery`
  String get saveImageToGallery {
    return Intl.message(
      'Save Image to Gallery',
      name: 'saveImageToGallery',
      desc: '',
      args: [],
    );
  }

  /// `Failed to Save Image to Gallery`
  String get saveImageToGalleryFailed {
    return Intl.message(
      'Failed to Save Image to Gallery',
      name: 'saveImageToGalleryFailed',
      desc: '',
      args: [],
    );
  }

  /// `Image Saved to Gallery Successfully`
  String get saveImageToGallerySuccess {
    return Intl.message(
      'Image Saved to Gallery Successfully',
      name: 'saveImageToGallerySuccess',
      desc: '',
      args: [],
    );
  }

  /// `Please Grant Storage Permissions`
  String get noStoragePermission {
    return Intl.message(
      'Please Grant Storage Permissions',
      name: 'noStoragePermission',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message('Reset', name: 'reset', desc: '', args: []);
  }

  /// `Copy`
  String get copy {
    return Intl.message('Copy', name: 'copy', desc: '', args: []);
  }

  /// `Are you sure you want to proceed?`
  String get isContinue {
    return Intl.message(
      'Are you sure you want to proceed?',
      name: 'isContinue',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Payment Method`
  String get collectType {
    return Intl.message(
      'Payment Method',
      name: 'collectType',
      desc: '',
      args: [],
    );
  }

  /// `For your account security, please complete real-name authentication`
  String get realNameAlert {
    return Intl.message(
      'For your account security, please complete real-name authentication',
      name: 'realNameAlert',
      desc: '',
      args: [],
    );
  }

  /// `Go to Authentication`
  String get goRealName {
    return Intl.message(
      'Go to Authentication',
      name: 'goRealName',
      desc: '',
      args: [],
    );
  }

  /// `Try Now`
  String get tryItNow {
    return Intl.message('Try Now', name: 'tryItNow', desc: '', args: []);
  }

  /// `Activity Closed`
  String get activityClosed {
    return Intl.message(
      'Activity Closed',
      name: 'activityClosed',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message('Close', name: 'close', desc: '', args: []);
  }

  /// `Connecting...`
  String get connecting {
    return Intl.message(
      'Connecting...',
      name: 'connecting',
      desc: '',
      args: [],
    );
  }

  /// `Failed to Initialize Connection`
  String get connectFailed {
    return Intl.message(
      'Failed to Initialize Connection',
      name: 'connectFailed',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get videoPlayerLoading {
    return Intl.message(
      'Loading...',
      name: 'videoPlayerLoading',
      desc: '',
      args: [],
    );
  }

  /// `File size exceeds the maximum limit ({name}MB)`
  String fileSizeOut(Object name) {
    return Intl.message(
      'File size exceeds the maximum limit (${name}MB)',
      name: 'fileSizeOut',
      desc: '',
      args: [name],
    );
  }

  /// `Next Page`
  String get next {
    return Intl.message('Next Page', name: 'next', desc: '', args: []);
  }

  /// `Previous Page`
  String get previous {
    return Intl.message('Previous Page', name: 'previous', desc: '', args: []);
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Update Detected`
  String get restartTitle {
    return Intl.message(
      'Update Detected',
      name: 'restartTitle',
      desc: '',
      args: [],
    );
  }

  /// `The app needs to be restarted to apply the update. Restart now?`
  String get restartContent {
    return Intl.message(
      'The app needs to be restarted to apply the update. Restart now?',
      name: 'restartContent',
      desc: '',
      args: [],
    );
  }

  /// `Restart`
  String get restartButton {
    return Intl.message('Restart', name: 'restartButton', desc: '', args: []);
  }

  /// `Restart`
  String get restartNoticeTitle {
    return Intl.message(
      'Restart',
      name: 'restartNoticeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please click here to restart the app`
  String get restartNoticeContent {
    return Intl.message(
      'Please click here to restart the app',
      name: 'restartNoticeContent',
      desc: '',
      args: [],
    );
  }

  /// `Customer Support`
  String get customerHelpViewTitle {
    return Intl.message(
      'Customer Support',
      name: 'customerHelpViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get languageEnglish {
    return Intl.message('English', name: 'languageEnglish', desc: '', args: []);
  }

  /// `中文（简体）`
  String get languageChinese {
    return Intl.message('中文（简体）', name: 'languageChinese', desc: '', args: []);
  }

  /// `Dark Theme`
  String get themeDark {
    return Intl.message('Dark Theme', name: 'themeDark', desc: '', args: []);
  }

  /// `Light Theme`
  String get themeLight {
    return Intl.message('Light Theme', name: 'themeLight', desc: '', args: []);
  }

  /// `Follow System`
  String get themeSystem {
    return Intl.message(
      'Follow System',
      name: 'themeSystem',
      desc: '',
      args: [],
    );
  }

  /// `Token has expired, please log in again`
  String get tokenError {
    return Intl.message(
      'Token has expired, please log in again',
      name: 'tokenError',
      desc: '',
      args: [],
    );
  }

  /// `Don't show this again today`
  String get hideNoticeToday {
    return Intl.message(
      'Don\'t show this again today',
      name: 'hideNoticeToday',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message('Free', name: 'free', desc: '', args: []);
  }

  /// `Activity Gift`
  String get free2 {
    return Intl.message('Activity Gift', name: 'free2', desc: '', args: []);
  }

  /// `Pending Gift`
  String get freeReady {
    return Intl.message('Pending Gift', name: 'freeReady', desc: '', args: []);
  }

  /// `Gifted`
  String get freeDone {
    return Intl.message('Gifted', name: 'freeDone', desc: '', args: []);
  }

  /// `Please enter your account`
  String get inputAccountHintText {
    return Intl.message(
      'Please enter your account',
      name: 'inputAccountHintText',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get inputPasswordHintText {
    return Intl.message(
      'Please enter your password',
      name: 'inputPasswordHintText',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password again`
  String get inputRePasswordHintText {
    return Intl.message(
      'Please enter your password again',
      name: 'inputRePasswordHintText',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the verification code`
  String get inputCaptchaHintText {
    return Intl.message(
      'Please enter the verification code',
      name: 'inputCaptchaHintText',
      desc: '',
      args: [],
    );
  }

  /// `Get Verification Code`
  String get inputCaptchaSendText {
    return Intl.message(
      'Get Verification Code',
      name: 'inputCaptchaSendText',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get inputPhoneHintText {
    return Intl.message(
      'Please enter your phone number',
      name: 'inputPhoneHintText',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the SMS verification code`
  String get inputPhoneCodeHintText {
    return Intl.message(
      'Please enter the SMS verification code',
      name: 'inputPhoneCodeHintText',
      desc: '',
      args: [],
    );
  }

  /// `Send Verification Code`
  String get inputSendSmsButtonText {
    return Intl.message(
      'Send Verification Code',
      name: 'inputSendSmsButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get inputSendSmsButtonText2 {
    return Intl.message(
      'Verification Code',
      name: 'inputSendSmsButtonText2',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Page`
  String get unknownViewTitle {
    return Intl.message(
      'Unknown Page',
      name: 'unknownViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Browser`
  String get webViewTitle {
    return Intl.message('Browser', name: 'webViewTitle', desc: '', args: []);
  }

  /// `Scan`
  String get scanViewTitle {
    return Intl.message('Scan', name: 'scanViewTitle', desc: '', args: []);
  }

  /// `No information detected`
  String get scanViewMessage {
    return Intl.message(
      'No information detected',
      name: 'scanViewMessage',
      desc: '',
      args: [],
    );
  }

  /// `Scan Result`
  String get scanViewResult {
    return Intl.message(
      'Scan Result',
      name: 'scanViewResult',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get loginViewTitleLogin {
    return Intl.message(
      'Log In',
      name: 'loginViewTitleLogin',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get loginViewTitleRegister {
    return Intl.message(
      'Sign Up',
      name: 'loginViewTitleRegister',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get loginViewTitleForgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'loginViewTitleForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Remember Account`
  String get loginViewRememberAccount {
    return Intl.message(
      'Remember Account',
      name: 'loginViewRememberAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get loginViewLogin {
    return Intl.message('Log In', name: 'loginViewLogin', desc: '', args: []);
  }

  /// `Back to Log In`
  String get loginViewGoBackLogin {
    return Intl.message(
      'Back to Log In',
      name: 'loginViewGoBackLogin',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get loginViewRegister {
    return Intl.message(
      'Sign Up',
      name: 'loginViewRegister',
      desc: '',
      args: [],
    );
  }

  /// `Password Login`
  String get loginViewLoginForPassword {
    return Intl.message(
      'Password Login',
      name: 'loginViewLoginForPassword',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code Login`
  String get loginViewLoginForCode {
    return Intl.message(
      'Verification Code Login',
      name: 'loginViewLoginForCode',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get loginViewForgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'loginViewForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get loginViewGetBackPassword {
    return Intl.message(
      'Confirm',
      name: 'loginViewGetBackPassword',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get bottomChat {
    return Intl.message('Support', name: 'bottomChat', desc: '', args: []);
  }

  /// `Quick Exchange`
  String get bottomFlashExchange {
    return Intl.message(
      'Quick Exchange',
      name: 'bottomFlashExchange',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get bottomHome {
    return Intl.message('Home', name: 'bottomHome', desc: '', args: []);
  }

  /// `My`
  String get bottomMine {
    return Intl.message('My', name: 'bottomMine', desc: '', args: []);
  }

  /// `Scan`
  String get bottomScan {
    return Intl.message('Scan', name: 'bottomScan', desc: '', args: []);
  }

  /// `UID`
  String get homeViewUid {
    return Intl.message('UID', name: 'homeViewUid', desc: '', args: []);
  }

  /// `Account Balance (CGB)`
  String get homeViewBalance {
    return Intl.message(
      'Account Balance (CGB)',
      name: 'homeViewBalance',
      desc: '',
      args: [],
    );
  }

  /// `In Orders (CGB)`
  String get homeViewSelling {
    return Intl.message(
      'In Orders (CGB)',
      name: 'homeViewSelling',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable (CGB)`
  String get homeViewLock {
    return Intl.message(
      'Unavailable (CGB)',
      name: 'homeViewLock',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Address`
  String get homeViewWalletAddress {
    return Intl.message(
      'Wallet Address',
      name: 'homeViewWalletAddress',
      desc: '',
      args: [],
    );
  }

  /// `Buy Coin`
  String get homeViewBuyCoin {
    return Intl.message(
      'Buy Coin',
      name: 'homeViewBuyCoin',
      desc: '',
      args: [],
    );
  }

  /// `Sell Coin`
  String get homeViewSellCoin {
    return Intl.message(
      'Sell Coin',
      name: 'homeViewSellCoin',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get homeViewTransfer {
    return Intl.message(
      'Transfer',
      name: 'homeViewTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Buy Orders`
  String get homeViewBuyOrders {
    return Intl.message(
      'Buy Orders',
      name: 'homeViewBuyOrders',
      desc: '',
      args: [],
    );
  }

  /// `Sell Orders`
  String get homeViewSellOrders {
    return Intl.message(
      'Sell Orders',
      name: 'homeViewSellOrders',
      desc: '',
      args: [],
    );
  }

  /// `Quick Buy`
  String get homeViewQuickBuyButton {
    return Intl.message(
      'Quick Buy',
      name: 'homeViewQuickBuyButton',
      desc: '',
      args: [],
    );
  }

  /// `Trade with CGpay_Test without bank risk control`
  String get homeViewQuickBuyTitle {
    return Intl.message(
      'Trade with CGpay_Test without bank risk control',
      name: 'homeViewQuickBuyTitle',
      desc: '',
      args: [],
    );
  }

  /// `CGpay_Test pegged to CNY at a 1:1 exchange rate`
  String get homeViewQuickBuyContent {
    return Intl.message(
      'CGpay_Test pegged to CNY at a 1:1 exchange rate',
      name: 'homeViewQuickBuyContent',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faqTitle {
    return Intl.message('FAQ', name: 'faqTitle', desc: '', args: []);
  }

  /// `General`
  String get faqNormal {
    return Intl.message('General', name: 'faqNormal', desc: '', args: []);
  }

  /// `HOT`
  String get faqHot {
    return Intl.message('HOT', name: 'faqHot', desc: '', args: []);
  }

  /// `Exchange History`
  String get flashViewHistory {
    return Intl.message(
      'Exchange History',
      name: 'flashViewHistory',
      desc: '',
      args: [],
    );
  }

  /// `Current Exchange Rate`
  String get flashViewExchangeRate {
    return Intl.message(
      'Current Exchange Rate',
      name: 'flashViewExchangeRate',
      desc: '',
      args: [],
    );
  }

  /// `Estimated Exchange Amount`
  String get flashViewExchangeAmount {
    return Intl.message(
      'Estimated Exchange Amount',
      name: 'flashViewExchangeAmount',
      desc: '',
      args: [],
    );
  }

  /// `Mainnet Protocol`
  String get flashViewProtocolTitle {
    return Intl.message(
      'Mainnet Protocol',
      name: 'flashViewProtocolTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select Mainnet Protocol`
  String get flashViewProtocolChoose {
    return Intl.message(
      'Select Mainnet Protocol',
      name: 'flashViewProtocolChoose',
      desc: '',
      args: [],
    );
  }

  /// `Please ensure that the withdrawal network you choose is the same as the deposit network, otherwise asset loss may occur`
  String get flashViewProtocolAlert {
    return Intl.message(
      'Please ensure that the withdrawal network you choose is the same as the deposit network, otherwise asset loss may occur',
      name: 'flashViewProtocolAlert',
      desc: '',
      args: [],
    );
  }

  /// `TRC20`
  String get flashViewProtocolTrc {
    return Intl.message(
      'TRC20',
      name: 'flashViewProtocolTrc',
      desc: '',
      args: [],
    );
  }

  /// `ERC20`
  String get flashViewProtocolErc {
    return Intl.message(
      'ERC20',
      name: 'flashViewProtocolErc',
      desc: '',
      args: [],
    );
  }

  /// `Exchange`
  String get flashViewExchange {
    return Intl.message(
      'Exchange',
      name: 'flashViewExchange',
      desc: '',
      args: [],
    );
  }

  /// `CGB`
  String get flashViewCgb {
    return Intl.message('CGB', name: 'flashViewCgb', desc: '', args: []);
  }

  /// `USDT`
  String get flashViewUsdt {
    return Intl.message('USDT', name: 'flashViewUsdt', desc: '', args: []);
  }

  /// `Fast and Secure Exchange`
  String get flashViewTitle {
    return Intl.message(
      'Fast and Secure Exchange',
      name: 'flashViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Quick Exchange`
  String get flashViewCheckTitle {
    return Intl.message(
      'Confirm Quick Exchange',
      name: 'flashViewCheckTitle',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Exchange?`
  String get flashViewCheckSure {
    return Intl.message(
      'Confirm Exchange?',
      name: 'flashViewCheckSure',
      desc: '',
      args: [],
    );
  }

  /// `Estimated to Receive`
  String get flashViewCheckGet {
    return Intl.message(
      'Estimated to Receive',
      name: 'flashViewCheckGet',
      desc: '',
      args: [],
    );
  }

  /// `Online Support`
  String get chatViewTitle {
    return Intl.message(
      'Online Support',
      name: 'chatViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `System Announcement`
  String get chatViewNotifyTitle {
    return Intl.message(
      'System Announcement',
      name: 'chatViewNotifyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your continued support! We've launched a new feature...`
  String get chatViewNotifyContent {
    return Intl.message(
      'Thank you for your continued support! We\'ve launched a new feature...',
      name: 'chatViewNotifyContent',
      desc: '',
      args: [],
    );
  }

  /// `Personal Notification`
  String get chatViewNotifyPersonalTitle {
    return Intl.message(
      'Personal Notification',
      name: 'chatViewNotifyPersonalTitle',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your continued support! We've launched a new feature...`
  String get chatViewNotifyPersonalContent {
    return Intl.message(
      'Thank you for your continued support! We\'ve launched a new feature...',
      name: 'chatViewNotifyPersonalContent',
      desc: '',
      args: [],
    );
  }

  /// `Online Support`
  String get chatViewCustomerTitle {
    return Intl.message(
      'Online Support',
      name: 'chatViewCustomerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Providing solutions for various issues`
  String get chatViewCustomerContent {
    return Intl.message(
      'Providing solutions for various issues',
      name: 'chatViewCustomerContent',
      desc: '',
      args: [],
    );
  }

  /// `Tutorials`
  String get mineViewTutorialTitle {
    return Intl.message(
      'Tutorials',
      name: 'mineViewTutorialTitle',
      desc: '',
      args: [],
    );
  }

  /// `Easily understand the CGpay_Test trading process`
  String get mineViewTutorialContent {
    return Intl.message(
      'Easily understand the CGpay_Test trading process',
      name: 'mineViewTutorialContent',
      desc: '',
      args: [],
    );
  }

  /// `Wallet History`
  String get mineViewWalletHistory {
    return Intl.message(
      'Wallet History',
      name: 'mineViewWalletHistory',
      desc: '',
      args: [],
    );
  }

  /// `Promotions`
  String get mineViewPromotions {
    return Intl.message(
      'Promotions',
      name: 'mineViewPromotions',
      desc: '',
      args: [],
    );
  }

  /// `Account Management`
  String get mineViewAccount {
    return Intl.message(
      'Account Management',
      name: 'mineViewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Security Settings`
  String get mineViewSafe {
    return Intl.message(
      'Security Settings',
      name: 'mineViewSafe',
      desc: '',
      args: [],
    );
  }

  /// `System Announcement`
  String get mineViewSystemNotify {
    return Intl.message(
      'System Announcement',
      name: 'mineViewSystemNotify',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get mineViewFaq {
    return Intl.message('FAQ', name: 'mineViewFaq', desc: '', args: []);
  }

  /// `Version Information`
  String get mineViewVersion {
    return Intl.message(
      'Version Information',
      name: 'mineViewVersion',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get mineViewSettings {
    return Intl.message(
      'Settings',
      name: 'mineViewSettings',
      desc: '',
      args: [],
    );
  }

  /// `Feedback Center ( {name} )`
  String mineViewFeedback(Object name) {
    return Intl.message(
      'Feedback Center ( $name )',
      name: 'mineViewFeedback',
      desc: '',
      args: [name],
    );
  }

  /// `Rewards!`
  String get mineViewPrice {
    return Intl.message('Rewards!', name: 'mineViewPrice', desc: '', args: []);
  }

  /// `Personal Information`
  String get personalInfoViewTitle {
    return Intl.message(
      'Personal Information',
      name: 'personalInfoViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Profile Picture`
  String get personalInfoViewAvatar {
    return Intl.message(
      'Profile Picture',
      name: 'personalInfoViewAvatar',
      desc: '',
      args: [],
    );
  }

  /// `UID`
  String get personalInfoViewUID {
    return Intl.message('UID', name: 'personalInfoViewUID', desc: '', args: []);
  }

  /// `Last Login Time`
  String get personalInfoViewLastLoginTime {
    return Intl.message(
      'Last Login Time',
      name: 'personalInfoViewLastLoginTime',
      desc: '',
      args: [],
    );
  }

  /// `Last Login IP`
  String get personalInfoViewLastLoginIP {
    return Intl.message(
      'Last Login IP',
      name: 'personalInfoViewLastLoginIP',
      desc: '',
      args: [],
    );
  }

  /// `Nickname`
  String get personalInfoViewNickName {
    return Intl.message(
      'Nickname',
      name: 'personalInfoViewNickName',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get personalInfoViewLogout {
    return Intl.message(
      'Log Out',
      name: 'personalInfoViewLogout',
      desc: '',
      args: [],
    );
  }

  /// `Continuing will log you out of your current account. Proceed?`
  String get personalInfoViewLogoutAlert {
    return Intl.message(
      'Continuing will log you out of your current account. Proceed?',
      name: 'personalInfoViewLogoutAlert',
      desc: '',
      args: [],
    );
  }

  /// `Profile Picture`
  String get personalInfoViewAvatarTitle {
    return Intl.message(
      'Profile Picture',
      name: 'personalInfoViewAvatarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit Nickname`
  String get editNicknameViewTitle {
    return Intl.message(
      'Edit Nickname',
      name: 'editNicknameViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your new nickname`
  String get editNicknameViewHintText {
    return Intl.message(
      'Please enter your new nickname',
      name: 'editNicknameViewHintText',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Edit`
  String get editNicknameViewConfirm {
    return Intl.message(
      'Confirm Edit',
      name: 'editNicknameViewConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Wallet History`
  String get walletHistoryViewTitle {
    return Intl.message(
      'Wallet History',
      name: 'walletHistoryViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Account Balance (CGB)`
  String get walletHistoryViewBalance {
    return Intl.message(
      'Account Balance (CGB)',
      name: 'walletHistoryViewBalance',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable (CGB)`
  String get walletHistoryViewLock {
    return Intl.message(
      'Unavailable (CGB)',
      name: 'walletHistoryViewLock',
      desc: '',
      args: [],
    );
  }

  /// `In Orders (CGB)`
  String get walletHistoryViewSelling {
    return Intl.message(
      'In Orders (CGB)',
      name: 'walletHistoryViewSelling',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get walletHistoryViewToday {
    return Intl.message(
      'Today',
      name: 'walletHistoryViewToday',
      desc: '',
      args: [],
    );
  }

  /// `This Month`
  String get walletHistoryViewMonth {
    return Intl.message(
      'This Month',
      name: 'walletHistoryViewMonth',
      desc: '',
      args: [],
    );
  }

  /// `Select Type`
  String get walletHistoryViewTypeSelection {
    return Intl.message(
      'Select Type',
      name: 'walletHistoryViewTypeSelection',
      desc: '',
      args: [],
    );
  }

  /// `Promotions`
  String get promotionListViewTitle {
    return Intl.message(
      'Promotions',
      name: 'promotionListViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Activity Details`
  String get promotionInfoViewTitle {
    return Intl.message(
      'Activity Details',
      name: 'promotionInfoViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsViewTitle {
    return Intl.message(
      'Settings',
      name: 'settingsViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get settingsViewLanguage {
    return Intl.message(
      'Language',
      name: 'settingsViewLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get settingsViewTheme {
    return Intl.message('Theme', name: 'settingsViewTheme', desc: '', args: []);
  }

  /// `Sound Notification`
  String get settingsViewAudioAlert {
    return Intl.message(
      'Sound Notification',
      name: 'settingsViewAudioAlert',
      desc: '',
      args: [],
    );
  }

  /// `Vibration`
  String get settingsViewShock {
    return Intl.message(
      'Vibration',
      name: 'settingsViewShock',
      desc: '',
      args: [],
    );
  }

  /// `Account Management`
  String get walletManagerViewTitle {
    return Intl.message(
      'Account Management',
      name: 'walletManagerViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get walletManagerViewAdd {
    return Intl.message(
      'Add',
      name: 'walletManagerViewAdd',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get walletManagerViewDefault {
    return Intl.message(
      'Default',
      name: 'walletManagerViewDefault',
      desc: '',
      args: [],
    );
  }

  /// `Set as Default`
  String get walletManagerViewDefaultSet {
    return Intl.message(
      'Set as Default',
      name: 'walletManagerViewDefaultSet',
      desc: '',
      args: [],
    );
  }

  /// `Already Default`
  String get walletManagerViewDefaultAlready {
    return Intl.message(
      'Already Default',
      name: 'walletManagerViewDefaultAlready',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get walletManagerViewAddAccount {
    return Intl.message(
      'Account',
      name: 'walletManagerViewAddAccount',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get walletManagerViewDeleteAlertTitle {
    return Intl.message(
      'Delete Account',
      name: 'walletManagerViewDeleteAlertTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continuing will delete this payment account. Proceed?`
  String get walletManagerViewDeleteAlertContent {
    return Intl.message(
      'Continuing will delete this payment account. Proceed?',
      name: 'walletManagerViewDeleteAlertContent',
      desc: '',
      args: [],
    );
  }

  /// `Set as Default`
  String get walletManagerViewSetDefaultAlertTitle {
    return Intl.message(
      'Set as Default',
      name: 'walletManagerViewSetDefaultAlertTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continuing will set this {name} account as default. Proceed?`
  String walletManagerViewSetDefaultAlertContent(Object name) {
    return Intl.message(
      'Continuing will set this $name account as default. Proceed?',
      name: 'walletManagerViewSetDefaultAlertContent',
      desc: '',
      args: [name],
    );
  }

  /// `Loaded`
  String get refreshDone {
    return Intl.message('Loaded', name: 'refreshDone', desc: '', args: []);
  }

  /// `Pull to Load More`
  String get refreshLoading {
    return Intl.message(
      'Pull to Load More',
      name: 'refreshLoading',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get refreshOnLoading {
    return Intl.message(
      'Loading...',
      name: 'refreshOnLoading',
      desc: '',
      args: [],
    );
  }

  /// `Failed to Load! Tap to Retry!`
  String get refreshLoadingFailed {
    return Intl.message(
      'Failed to Load! Tap to Retry!',
      name: 'refreshLoadingFailed',
      desc: '',
      args: [],
    );
  }

  /// `Release to Load More!`
  String get refreshLoadingDrop {
    return Intl.message(
      'Release to Load More!',
      name: 'refreshLoadingDrop',
      desc: '',
      args: [],
    );
  }

  /// `No More Data!`
  String get refreshLoadingNoData {
    return Intl.message(
      'No More Data!',
      name: 'refreshLoadingNoData',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get walletAddViewTitle {
    return Intl.message('Add', name: 'walletAddViewTitle', desc: '', args: []);
  }

  /// `Name`
  String get walletAddViewName {
    return Intl.message('Name', name: 'walletAddViewName', desc: '', args: []);
  }

  /// `Please enter the account holder's name`
  String get walletAddViewNameHintText {
    return Intl.message(
      'Please enter the account holder\'s name',
      name: 'walletAddViewNameHintText',
      desc: '',
      args: [],
    );
  }

  /// `Account Type`
  String get walletAddViewAccountType {
    return Intl.message(
      'Account Type',
      name: 'walletAddViewAccountType',
      desc: '',
      args: [],
    );
  }

  /// `Bank Card Number`
  String get walletAddViewBank {
    return Intl.message(
      'Bank Card Number',
      name: 'walletAddViewBank',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the bank card number`
  String get walletAddViewBankHintText {
    return Intl.message(
      'Please enter the bank card number',
      name: 'walletAddViewBankHintText',
      desc: '',
      args: [],
    );
  }

  /// `Select Bank`
  String get walletAddViewBankName {
    return Intl.message(
      'Select Bank',
      name: 'walletAddViewBankName',
      desc: '',
      args: [],
    );
  }

  /// `Alipay Account`
  String get walletAddViewAlipayAccount {
    return Intl.message(
      'Alipay Account',
      name: 'walletAddViewAlipayAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the Alipay account`
  String get walletAddViewAlipayAccountHintText {
    return Intl.message(
      'Please enter the Alipay account',
      name: 'walletAddViewAlipayAccountHintText',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Address`
  String get walletAddViewAddress {
    return Intl.message(
      'Wallet Address',
      name: 'walletAddViewAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the wallet address`
  String get walletAddViewAddressHintText {
    return Intl.message(
      'Please enter the wallet address',
      name: 'walletAddViewAddressHintText',
      desc: '',
      args: [],
    );
  }

  /// `Payment QR Code`
  String get walletAddViewQrcode {
    return Intl.message(
      'Payment QR Code',
      name: 'walletAddViewQrcode',
      desc: '',
      args: [],
    );
  }

  /// `Upload Payment QR Code`
  String get walletAddViewQrcodeUpload {
    return Intl.message(
      'Upload Payment QR Code',
      name: 'walletAddViewQrcodeUpload',
      desc: '',
      args: [],
    );
  }

  /// `Please set up your fund password first`
  String get bankViewErrorText {
    return Intl.message(
      'Please set up your fund password first',
      name: 'bankViewErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Network Connection Failed`
  String get networkErrorTitle {
    return Intl.message(
      'Network Connection Failed',
      name: 'networkErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `There was a problem communicating with the server. Don't worry, you can try again later or exit the application temporarily.`
  String get networkErrorContent {
    return Intl.message(
      'There was a problem communicating with the server. Don\'t worry, you can try again later or exit the application temporarily.',
      name: 'networkErrorContent',
      desc: '',
      args: [],
    );
  }

  /// `Select Bank`
  String get bankViewTitle {
    return Intl.message(
      'Select Bank',
      name: 'bankViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the bank name`
  String get bankViewHintText {
    return Intl.message(
      'Please enter the bank name',
      name: 'bankViewHintText',
      desc: '',
      args: [],
    );
  }

  /// `Security Settings`
  String get securityViewTitle {
    return Intl.message(
      'Security Settings',
      name: 'securityViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Change Login Password`
  String get securityViewSignPassword {
    return Intl.message(
      'Change Login Password',
      name: 'securityViewSignPassword',
      desc: '',
      args: [],
    );
  }

  /// `Real-Name Authentication`
  String get securityViewRealName {
    return Intl.message(
      'Real-Name Authentication',
      name: 'securityViewRealName',
      desc: '',
      args: [],
    );
  }

  /// `Certified`
  String get securityViewRealNameCertified {
    return Intl.message(
      'Certified',
      name: 'securityViewRealNameCertified',
      desc: '',
      args: [],
    );
  }

  /// `Authentication Failed`
  String get securityViewRealNameCertificationFailed {
    return Intl.message(
      'Authentication Failed',
      name: 'securityViewRealNameCertificationFailed',
      desc: '',
      args: [],
    );
  }

  /// `Go to Certification`
  String get securityViewRealNameGoToCertification {
    return Intl.message(
      'Go to Certification',
      name: 'securityViewRealNameGoToCertification',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get securityViewUserName {
    return Intl.message(
      'Username',
      name: 'securityViewUserName',
      desc: '',
      args: [],
    );
  }

  /// `Bind Phone Number`
  String get securityViewPhone {
    return Intl.message(
      'Bind Phone Number',
      name: 'securityViewPhone',
      desc: '',
      args: [],
    );
  }

  /// `Please contact the administrator to modify`
  String get securityViewPhoneAlert {
    return Intl.message(
      'Please contact the administrator to modify',
      name: 'securityViewPhoneAlert',
      desc: '',
      args: [],
    );
  }

  /// `Change Fund Password`
  String get securityViewWalletPassword {
    return Intl.message(
      'Change Fund Password',
      name: 'securityViewWalletPassword',
      desc: '',
      args: [],
    );
  }

  /// `Change Login Password`
  String get passwordSignViewTitle {
    return Intl.message(
      'Change Login Password',
      name: 'passwordSignViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `A verification code will be sent to your bound phone number`
  String get passwordSignViewSecondTitle {
    return Intl.message(
      'A verification code will be sent to your bound phone number',
      name: 'passwordSignViewSecondTitle',
      desc: '',
      args: [],
    );
  }

  /// `Set an 8-20 digit password with letters, numbers, or symbols`
  String get passwordSignViewNewHintText {
    return Intl.message(
      'Set an 8-20 digit password with letters, numbers, or symbols',
      name: 'passwordSignViewNewHintText',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get passwordSignViewRenewHintText {
    return Intl.message(
      'Confirm Password',
      name: 'passwordSignViewRenewHintText',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Change`
  String get passwordSignViewConfirm {
    return Intl.message(
      'Confirm Change',
      name: 'passwordSignViewConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Change Fund Password`
  String get walletPasswordViewTitleReset {
    return Intl.message(
      'Change Fund Password',
      name: 'walletPasswordViewTitleReset',
      desc: '',
      args: [],
    );
  }

  /// `Set Fund Password`
  String get walletPasswordViewTitleSet {
    return Intl.message(
      'Set Fund Password',
      name: 'walletPasswordViewTitleSet',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your original fund password`
  String get walletPasswordViewOld {
    return Intl.message(
      'Please enter your original fund password',
      name: 'walletPasswordViewOld',
      desc: '',
      args: [],
    );
  }

  /// `Set a 6-digit numeric password`
  String get walletPasswordViewNew {
    return Intl.message(
      'Set a 6-digit numeric password',
      name: 'walletPasswordViewNew',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get walletPasswordViewRenew {
    return Intl.message(
      'Confirm Password',
      name: 'walletPasswordViewRenew',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get walletPasswordViewConfirm {
    return Intl.message(
      'Verify',
      name: 'walletPasswordViewConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Fund Password`
  String get walletPasswordFindPassword {
    return Intl.message(
      'Forgot Fund Password',
      name: 'walletPasswordFindPassword',
      desc: '',
      args: [],
    );
  }

  /// `Version Information`
  String get versionViewTitle {
    return Intl.message(
      'Version Information',
      name: 'versionViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Current Version`
  String get versionViewVersion {
    return Intl.message(
      'Current Version',
      name: 'versionViewVersion',
      desc: '',
      args: [],
    );
  }

  /// `Check for Updates`
  String get versionViewCheck {
    return Intl.message(
      'Check for Updates',
      name: 'versionViewCheck',
      desc: '',
      args: [],
    );
  }

  /// `Your app is already the latest version`
  String get versionViewSnackContent {
    return Intl.message(
      'Your app is already the latest version',
      name: 'versionViewSnackContent',
      desc: '',
      args: [],
    );
  }

  /// `Copyright CGpay_Test All rights reserved by CG Game`
  String get versionViewBottom {
    return Intl.message(
      'Copyright CGpay_Test All rights reserved by CG Game',
      name: 'versionViewBottom',
      desc: '',
      args: [],
    );
  }

  /// `New Version Available`
  String get versionViewAlertTitle {
    return Intl.message(
      'New Version Available',
      name: 'versionViewAlertTitle',
      desc: '',
      args: [],
    );
  }

  /// `Update Content`
  String get versionViewAlertContent {
    return Intl.message(
      'Update Content',
      name: 'versionViewAlertContent',
      desc: '',
      args: [],
    );
  }

  /// `Update Now`
  String get versionViewAlertNow {
    return Intl.message(
      'Update Now',
      name: 'versionViewAlertNow',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get versionViewAlertLater {
    return Intl.message(
      'Later',
      name: 'versionViewAlertLater',
      desc: '',
      args: [],
    );
  }

  /// `System Announcement`
  String get notifyViewTitleSystem {
    return Intl.message(
      'System Announcement',
      name: 'notifyViewTitleSystem',
      desc: '',
      args: [],
    );
  }

  /// `Personal Notification`
  String get notifyViewTitlePersonal {
    return Intl.message(
      'Personal Notification',
      name: 'notifyViewTitlePersonal',
      desc: '',
      args: [],
    );
  }

  /// `View Details`
  String get notifyViewMore {
    return Intl.message(
      'View Details',
      name: 'notifyViewMore',
      desc: '',
      args: [],
    );
  }

  /// `Real-Name Authentication`
  String get realNameViewTitle {
    return Intl.message(
      'Real-Name Authentication',
      name: 'realNameViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Real Name`
  String get realNameViewName {
    return Intl.message(
      'Real Name',
      name: 'realNameViewName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your real name`
  String get realNameViewNameHintText {
    return Intl.message(
      'Please enter your real name',
      name: 'realNameViewNameHintText',
      desc: '',
      args: [],
    );
  }

  /// `Invalid name, please re-enter`
  String get realNameViewNameFailed {
    return Intl.message(
      'Invalid name, please re-enter',
      name: 'realNameViewNameFailed',
      desc: '',
      args: [],
    );
  }

  /// `ID Card Number`
  String get realNameViewID {
    return Intl.message(
      'ID Card Number',
      name: 'realNameViewID',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your ID card number`
  String get realNameViewIDHintText {
    return Intl.message(
      'Please enter your ID card number',
      name: 'realNameViewIDHintText',
      desc: '',
      args: [],
    );
  }

  /// `Invalid ID card number, please re-enter`
  String get realNameViewIDFailed {
    return Intl.message(
      'Invalid ID card number, please re-enter',
      name: 'realNameViewIDFailed',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get realNameViewNext {
    return Intl.message('Next', name: 'realNameViewNext', desc: '', args: []);
  }

  /// `Important Notice`
  String get realNameViewNoticeTitle {
    return Intl.message(
      'Important Notice',
      name: 'realNameViewNoticeTitle',
      desc: '',
      args: [],
    );
  }

  /// `1. Your real name and ID card number cannot be modified after submission. Please fill in carefully.\n2. You need to bind your ID card and complete face verification to use CGpay_Test for transactions.`
  String get realNameViewNoticeContent {
    return Intl.message(
      '1. Your real name and ID card number cannot be modified after submission. Please fill in carefully.\n2. You need to bind your ID card and complete face verification to use CGpay_Test for transactions.',
      name: 'realNameViewNoticeContent',
      desc: '',
      args: [],
    );
  }

  /// `* ID Card Front`
  String get realNameViewNoticeIDFrontTitle {
    return Intl.message(
      '* ID Card Front',
      name: 'realNameViewNoticeIDFrontTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please upload a clear photo of the front of your ID card without any obstructions.`
  String get realNameViewNoticeIDFrontContent {
    return Intl.message(
      'Please upload a clear photo of the front of your ID card without any obstructions.',
      name: 'realNameViewNoticeIDFrontContent',
      desc: '',
      args: [],
    );
  }

  /// `* ID Card Back`
  String get realNameViewNoticeIDBackTitle {
    return Intl.message(
      '* ID Card Back',
      name: 'realNameViewNoticeIDBackTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please upload a clear photo of the back of your ID card without any obstructions.`
  String get realNameViewNoticeIDBackContent {
    return Intl.message(
      'Please upload a clear photo of the back of your ID card without any obstructions.',
      name: 'realNameViewNoticeIDBackContent',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Submission`
  String get realNameViewConfirmID {
    return Intl.message(
      'Confirm Submission',
      name: 'realNameViewConfirmID',
      desc: '',
      args: [],
    );
  }

  /// `Re-upload`
  String get realNameViewUploadAgain {
    return Intl.message(
      'Re-upload',
      name: 'realNameViewUploadAgain',
      desc: '',
      args: [],
    );
  }

  /// `I Understand`
  String get iKnown {
    return Intl.message('I Understand', name: 'iKnown', desc: '', args: []);
  }

  /// `Face Recognition`
  String get faceVerifiedViewTitle {
    return Intl.message(
      'Face Recognition',
      name: 'faceVerifiedViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Face Verification`
  String get faceVerifiedViewButton {
    return Intl.message(
      'Face Verification',
      name: 'faceVerifiedViewButton',
      desc: '',
      args: [],
    );
  }

  /// `For your account security, please complete face verification`
  String get faceVerifiedViewNotice {
    return Intl.message(
      'For your account security, please complete face verification',
      name: 'faceVerifiedViewNotice',
      desc: '',
      args: [],
    );
  }

  /// `Verification Result`
  String get verifiedResultViewTitle {
    return Intl.message(
      'Verification Result',
      name: 'verifiedResultViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Verification Successful`
  String get verifiedResultViewSuccessful {
    return Intl.message(
      'Verification Successful',
      name: 'verifiedResultViewSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Verification Failed`
  String get verifiedResultViewFailed {
    return Intl.message(
      'Verification Failed',
      name: 'verifiedResultViewFailed',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get verifiedResultViewBack {
    return Intl.message(
      'Back',
      name: 'verifiedResultViewBack',
      desc: '',
      args: [],
    );
  }

  /// `Verify Again`
  String get verifiedResultViewAgain {
    return Intl.message(
      'Verify Again',
      name: 'verifiedResultViewAgain',
      desc: '',
      args: [],
    );
  }

  /// `Support List`
  String get customerViewTitleUser {
    return Intl.message(
      'Support List',
      name: 'customerViewTitleUser',
      desc: '',
      args: [],
    );
  }

  /// `Guest Support`
  String get customerViewTitleGuest {
    return Intl.message(
      'Guest Support',
      name: 'customerViewTitleGuest',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get customerViewTitleFaq {
    return Intl.message(
      'FAQ',
      name: 'customerViewTitleFaq',
      desc: '',
      args: [],
    );
  }

  /// `Arbitration support not configured yet`
  String get customerNoCert {
    return Intl.message(
      'Arbitration support not configured yet',
      name: 'customerNoCert',
      desc: '',
      args: [],
    );
  }

  /// `Buy Orders`
  String get buyOrderViewTitle {
    return Intl.message(
      'Buy Orders',
      name: 'buyOrderViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Small Amount`
  String get buyOrderViewSmall {
    return Intl.message(
      'Small Amount',
      name: 'buyOrderViewSmall',
      desc: '',
      args: [],
    );
  }

  /// `Large Amount`
  String get buyOrderViewMax {
    return Intl.message(
      'Large Amount',
      name: 'buyOrderViewMax',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get online {
    return Intl.message('Online', name: 'online', desc: '', args: []);
  }

  /// `Offline`
  String get offline {
    return Intl.message('Offline', name: 'offline', desc: '', args: []);
  }

  /// `Online Status`
  String get isOnline {
    return Intl.message('Online Status', name: 'isOnline', desc: '', args: []);
  }

  /// `Payment Methods`
  String get buyOrderViewBanks {
    return Intl.message(
      'Payment Methods',
      name: 'buyOrderViewBanks',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get buyOrderViewAmount {
    return Intl.message(
      'Amount',
      name: 'buyOrderViewAmount',
      desc: '',
      args: [],
    );
  }

  /// `Amount Range`
  String get buyOrderViewAmountCustomize {
    return Intl.message(
      'Amount Range',
      name: 'buyOrderViewAmountCustomize',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get buyOrderViewAll {
    return Intl.message('All', name: 'buyOrderViewAll', desc: '', args: []);
  }

  /// `Filter`
  String get buyOrderViewFilter {
    return Intl.message(
      'Filter',
      name: 'buyOrderViewFilter',
      desc: '',
      args: [],
    );
  }

  /// `Amount Range`
  String get buyOrderViewRanger {
    return Intl.message(
      'Amount Range',
      name: 'buyOrderViewRanger',
      desc: '',
      args: [],
    );
  }

  /// `Minimum`
  String get buyOrderViewMinHintText {
    return Intl.message(
      'Minimum',
      name: 'buyOrderViewMinHintText',
      desc: '',
      args: [],
    );
  }

  /// `Maximum`
  String get buyOrderViewMaxHintText {
    return Intl.message(
      'Maximum',
      name: 'buyOrderViewMaxHintText',
      desc: '',
      args: [],
    );
  }

  /// `Selling Quantity`
  String get buyOrderViewSellAmount {
    return Intl.message(
      'Selling Quantity',
      name: 'buyOrderViewSellAmount',
      desc: '',
      args: [],
    );
  }

  /// `Splittable`
  String get orderSplit {
    return Intl.message('Splittable', name: 'orderSplit', desc: '', args: []);
  }

  /// `Non-Splittable`
  String get orderNoSplit {
    return Intl.message(
      'Non-Splittable',
      name: 'orderNoSplit',
      desc: '',
      args: [],
    );
  }

  /// `Limit`
  String get buyOrderViewLimit {
    return Intl.message('Limit', name: 'buyOrderViewLimit', desc: '', args: []);
  }

  /// `I Want to Buy`
  String get buyOrderViewWantToBuy {
    return Intl.message(
      'I Want to Buy',
      name: 'buyOrderViewWantToBuy',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get buyOrderViewBuy {
    return Intl.message('Buy', name: 'buyOrderViewBuy', desc: '', args: []);
  }

  /// `Available to Buy`
  String get buyOrderViewBuyAmount {
    return Intl.message(
      'Available to Buy',
      name: 'buyOrderViewBuyAmount',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get buyOrderViewBuyAll {
    return Intl.message('All', name: 'buyOrderViewBuyAll', desc: '', args: []);
  }

  /// `Go to Pay`
  String get buyOrderViewGoAndPay {
    return Intl.message(
      'Go to Pay',
      name: 'buyOrderViewGoAndPay',
      desc: '',
      args: [],
    );
  }

  /// `Purchase amount cannot exceed`
  String get buyOrderViewErrorMax {
    return Intl.message(
      'Purchase amount cannot exceed',
      name: 'buyOrderViewErrorMax',
      desc: '',
      args: [],
    );
  }

  /// `Purchase amount cannot be less than`
  String get buyOrderViewErrorMin {
    return Intl.message(
      'Purchase amount cannot be less than',
      name: 'buyOrderViewErrorMin',
      desc: '',
      args: [],
    );
  }

  /// `Buy Order Details`
  String get buyOrderInfoViewTitle {
    return Intl.message(
      'Buy Order Details',
      name: 'buyOrderInfoViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Seller`
  String get buyOrderInfoViewSeller {
    return Intl.message(
      'Seller',
      name: 'buyOrderInfoViewSeller',
      desc: '',
      args: [],
    );
  }

  /// `Buy Order Completion Rate`
  String get buyOrderInfoViewBuyRate {
    return Intl.message(
      'Buy Order Completion Rate',
      name: 'buyOrderInfoViewBuyRate',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Quantity`
  String get buyOrderInfoViewBuyAmount {
    return Intl.message(
      'Purchase Quantity',
      name: 'buyOrderInfoViewBuyAmount',
      desc: '',
      args: [],
    );
  }

  /// `Buyer Placed Order`
  String get buyOrderInfoViewStep1 {
    return Intl.message(
      'Buyer Placed Order',
      name: 'buyOrderInfoViewStep1',
      desc: '',
      args: [],
    );
  }

  /// `Displayed after the seller accepts the order`
  String get buyOrderInfoViewStepHintText1 {
    return Intl.message(
      'Displayed after the seller accepts the order',
      name: 'buyOrderInfoViewStepHintText1',
      desc: '',
      args: [],
    );
  }

  /// `Seller Accepted Order`
  String get buyOrderInfoViewStep2 {
    return Intl.message(
      'Seller Accepted Order',
      name: 'buyOrderInfoViewStep2',
      desc: '',
      args: [],
    );
  }

  /// `Buyer Paid`
  String get buyOrderInfoViewStep3 {
    return Intl.message(
      'Buyer Paid',
      name: 'buyOrderInfoViewStep3',
      desc: '',
      args: [],
    );
  }

  /// `Upload Proof`
  String get buyOrderInfoViewStepUpload3 {
    return Intl.message(
      'Upload Proof',
      name: 'buyOrderInfoViewStepUpload3',
      desc: '',
      args: [],
    );
  }

  /// `Seller Released Coins`
  String get buyOrderInfoViewStep4 {
    return Intl.message(
      'Seller Released Coins',
      name: 'buyOrderInfoViewStep4',
      desc: '',
      args: [],
    );
  }

  /// `Payment Account`
  String get buyOrderInfoViewPayAccount {
    return Intl.message(
      'Payment Account',
      name: 'buyOrderInfoViewPayAccount',
      desc: '',
      args: [],
    );
  }

  /// `Receiving Account`
  String get buyOrderInfoViewCollectAccount {
    return Intl.message(
      'Receiving Account',
      name: 'buyOrderInfoViewCollectAccount',
      desc: '',
      args: [],
    );
  }

  /// `Order Information`
  String get buyOrderInfoViewOrderInfo {
    return Intl.message(
      'Order Information',
      name: 'buyOrderInfoViewOrderInfo',
      desc: '',
      args: [],
    );
  }

  /// `Precautions`
  String get buyOrderInfoViewAlertTitle {
    return Intl.message(
      'Precautions',
      name: 'buyOrderInfoViewAlertTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Order`
  String get buyOrderInfoViewCancel {
    return Intl.message(
      'Cancel Order',
      name: 'buyOrderInfoViewCancel',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Order`
  String get buyOrderInfoViewOrderCancel {
    return Intl.message(
      'Cancel Order',
      name: 'buyOrderInfoViewOrderCancel',
      desc: '',
      args: [],
    );
  }

  /// `Repeated unwarranted cancellations will restrict your ability to buy coins`
  String get buyOrderInfoViewOrderCancelSecondTitle {
    return Intl.message(
      'Repeated unwarranted cancellations will restrict your ability to buy coins',
      name: 'buyOrderInfoViewOrderCancelSecondTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continuing will cancel the order`
  String get buyOrderInfoViewOrderCancelContent {
    return Intl.message(
      'Continuing will cancel the order',
      name: 'buyOrderInfoViewOrderCancelContent',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get buyOrderInfoViewOrderId {
    return Intl.message(
      'Order ID',
      name: 'buyOrderInfoViewOrderId',
      desc: '',
      args: [],
    );
  }

  /// `Recipient`
  String get buyOrderInfoViewCollectName {
    return Intl.message(
      'Recipient',
      name: 'buyOrderInfoViewCollectName',
      desc: '',
      args: [],
    );
  }

  /// `Receiving Bank`
  String get buyOrderInfoViewCollectBank {
    return Intl.message(
      'Receiving Bank',
      name: 'buyOrderInfoViewCollectBank',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Address`
  String get buyOrderInfoViewCollectWallet {
    return Intl.message(
      'Wallet Address',
      name: 'buyOrderInfoViewCollectWallet',
      desc: '',
      args: [],
    );
  }

  /// `Receiving Bank Card Number`
  String get buyOrderInfoViewCollectBankCard {
    return Intl.message(
      'Receiving Bank Card Number',
      name: 'buyOrderInfoViewCollectBankCard',
      desc: '',
      args: [],
    );
  }

  /// `Account Opening Branch`
  String get buyOrderInfoViewCollectBankCardAddress {
    return Intl.message(
      'Account Opening Branch',
      name: 'buyOrderInfoViewCollectBankCardAddress',
      desc: '',
      args: [],
    );
  }

  /// `Payment QR Code`
  String get buyOrderInfoViewCollectQrcode {
    return Intl.message(
      'Payment QR Code',
      name: 'buyOrderInfoViewCollectQrcode',
      desc: '',
      args: [],
    );
  }

  /// `Creation Time`
  String get buyOrderInfoViewCreateTime {
    return Intl.message(
      'Creation Time',
      name: 'buyOrderInfoViewCreateTime',
      desc: '',
      args: [],
    );
  }

  /// `Cancellation Time`
  String get buyOrderInfoViewCancelTime {
    return Intl.message(
      'Cancellation Time',
      name: 'buyOrderInfoViewCancelTime',
      desc: '',
      args: [],
    );
  }

  /// `Change Payment Account`
  String get buyOrderInfoViewChangeBankTitle {
    return Intl.message(
      'Change Payment Account',
      name: 'buyOrderInfoViewChangeBankTitle',
      desc: '',
      args: [],
    );
  }

  /// `Alipay risk, can you switch to another Alipay account for transfer?`
  String get buyOrderInfoViewChangeBankSecondTitle {
    return Intl.message(
      'Alipay risk, can you switch to another Alipay account for transfer?',
      name: 'buyOrderInfoViewChangeBankSecondTitle',
      desc: '',
      args: [],
    );
  }

  /// `You can request the seller to change the payment account and wait for their response.`
  String get buyOrderInfoViewChangeBankContent {
    return Intl.message(
      'You can request the seller to change the payment account and wait for their response.',
      name: 'buyOrderInfoViewChangeBankContent',
      desc: '',
      args: [],
    );
  }

  /// `Request Change`
  String get buyOrderInfoViewChangeBankButtonText {
    return Intl.message(
      'Request Change',
      name: 'buyOrderInfoViewChangeBankButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Download QR Code`
  String get buyOrderInfoViewDownloadQrcode {
    return Intl.message(
      'Download QR Code',
      name: 'buyOrderInfoViewDownloadQrcode',
      desc: '',
      args: [],
    );
  }

  /// `Abnormal recipient card number or account`
  String get buyOrderInfoViewCancelReason1 {
    return Intl.message(
      'Abnormal recipient card number or account',
      name: 'buyOrderInfoViewCancelReason1',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect recipient bank branch`
  String get buyOrderInfoViewCancelReason2 {
    return Intl.message(
      'Incorrect recipient bank branch',
      name: 'buyOrderInfoViewCancelReason2',
      desc: '',
      args: [],
    );
  }

  /// `Recipient card number does not match the name`
  String get buyOrderInfoViewCancelReason3 {
    return Intl.message(
      'Recipient card number does not match the name',
      name: 'buyOrderInfoViewCancelReason3',
      desc: '',
      args: [],
    );
  }

  /// `No longer want to buy`
  String get buyOrderInfoViewCancelReason4 {
    return Intl.message(
      'No longer want to buy',
      name: 'buyOrderInfoViewCancelReason4',
      desc: '',
      args: [],
    );
  }

  /// `Sell Coins`
  String get sellOrderViewTitle {
    return Intl.message(
      'Sell Coins',
      name: 'sellOrderViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `* Selling Quantity`
  String get sellOrderViewSellAmount {
    return Intl.message(
      '* Selling Quantity',
      name: 'sellOrderViewSellAmount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the selling quantity`
  String get sellOrderViewSellAmountHintText {
    return Intl.message(
      'Please enter the selling quantity',
      name: 'sellOrderViewSellAmountHintText',
      desc: '',
      args: [],
    );
  }

  /// `Currently Available`
  String get sellOrderViewCanSellAmount {
    return Intl.message(
      'Currently Available',
      name: 'sellOrderViewCanSellAmount',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get sellOrderViewAll {
    return Intl.message('All', name: 'sellOrderViewAll', desc: '', args: []);
  }

  /// `* Split Order?`
  String get sellOrderViewSplitTitle {
    return Intl.message(
      '* Split Order?',
      name: 'sellOrderViewSplitTitle',
      desc: '',
      args: [],
    );
  }

  /// `Splittable`
  String get sellOrderViewCanSplit {
    return Intl.message(
      'Splittable',
      name: 'sellOrderViewCanSplit',
      desc: '',
      args: [],
    );
  }

  /// `Non-Splittable`
  String get sellOrderViewCanNotSplit {
    return Intl.message(
      'Non-Splittable',
      name: 'sellOrderViewCanNotSplit',
      desc: '',
      args: [],
    );
  }

  /// `* Single Order Amount Range`
  String get sellOrderViewSplitRange {
    return Intl.message(
      '* Single Order Amount Range',
      name: 'sellOrderViewSplitRange',
      desc: '',
      args: [],
    );
  }

  /// `* Payment Methods (Multiple Selections)`
  String get sellOrderViewCollectTitle {
    return Intl.message(
      '* Payment Methods (Multiple Selections)',
      name: 'sellOrderViewCollectTitle',
      desc: '',
      args: [],
    );
  }

  /// `Place Order`
  String get sellOrderViewButtonText {
    return Intl.message(
      'Place Order',
      name: 'sellOrderViewButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Buy Orders`
  String get buyOrderHistoryTitle {
    return Intl.message(
      'Buy Orders',
      name: 'buyOrderHistoryTitle',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get buyOrderHistoryAll {
    return Intl.message('All', name: 'buyOrderHistoryAll', desc: '', args: []);
  }

  /// `In Progress`
  String get buyOrderHistoryIng {
    return Intl.message(
      'In Progress',
      name: 'buyOrderHistoryIng',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get buyOrderHistoryDone {
    return Intl.message(
      'Completed',
      name: 'buyOrderHistoryDone',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get buyOrderHistoryCancel {
    return Intl.message(
      'Cancelled',
      name: 'buyOrderHistoryCancel',
      desc: '',
      args: [],
    );
  }

  /// `Total Purchases`
  String get buyOrderHistoryTotalAll {
    return Intl.message(
      'Total Purchases',
      name: 'buyOrderHistoryTotalAll',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get buyOrderHistoryTotalIng {
    return Intl.message(
      'In Progress',
      name: 'buyOrderHistoryTotalIng',
      desc: '',
      args: [],
    );
  }

  /// `Total Completed`
  String get buyOrderHistoryTotalDone {
    return Intl.message(
      'Total Completed',
      name: 'buyOrderHistoryTotalDone',
      desc: '',
      args: [],
    );
  }

  /// `Total Cancelled`
  String get buyOrderHistoryTotalCancel {
    return Intl.message(
      'Total Cancelled',
      name: 'buyOrderHistoryTotalCancel',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get buyOrderHistoryAmount {
    return Intl.message(
      'Amount',
      name: 'buyOrderHistoryAmount',
      desc: '',
      args: [],
    );
  }

  /// `Unit Price`
  String get buyOrderHistorySingle {
    return Intl.message(
      'Unit Price',
      name: 'buyOrderHistorySingle',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get buyOrderHistoryNumber {
    return Intl.message(
      'Quantity',
      name: 'buyOrderHistoryNumber',
      desc: '',
      args: [],
    );
  }

  /// `Payment Type`
  String get buyOrderHistoryPayType {
    return Intl.message(
      'Payment Type',
      name: 'buyOrderHistoryPayType',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get buyOrderHistoryTime {
    return Intl.message(
      'Time',
      name: 'buyOrderHistoryTime',
      desc: '',
      args: [],
    );
  }

  /// `Sell Orders`
  String get sellOrderHistoryTitle {
    return Intl.message(
      'Sell Orders',
      name: 'sellOrderHistoryTitle',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get sellOrderHistoryAll {
    return Intl.message('All', name: 'sellOrderHistoryAll', desc: '', args: []);
  }

  /// `In Listing`
  String get sellOrderHistoryIng {
    return Intl.message(
      'In Listing',
      name: 'sellOrderHistoryIng',
      desc: '',
      args: [],
    );
  }

  /// `Sold Out`
  String get sellOrderHistoryDone {
    return Intl.message(
      'Sold Out',
      name: 'sellOrderHistoryDone',
      desc: '',
      args: [],
    );
  }

  /// `Total Sales`
  String get sellOrderHistoryTotalAll {
    return Intl.message(
      'Total Sales',
      name: 'sellOrderHistoryTotalAll',
      desc: '',
      args: [],
    );
  }

  /// `Selling`
  String get sellOrderHistoryTotalIng {
    return Intl.message(
      'Selling',
      name: 'sellOrderHistoryTotalIng',
      desc: '',
      args: [],
    );
  }

  /// `Total Sold Out`
  String get sellOrderHistoryTotalDone {
    return Intl.message(
      'Total Sold Out',
      name: 'sellOrderHistoryTotalDone',
      desc: '',
      args: [],
    );
  }

  /// `Total Cancelled`
  String get sellOrderHistoryTotalCancel {
    return Intl.message(
      'Total Cancelled',
      name: 'sellOrderHistoryTotalCancel',
      desc: '',
      args: [],
    );
  }

  /// `Selling Amount`
  String get sellOrderHistoryAmount {
    return Intl.message(
      'Selling Amount',
      name: 'sellOrderHistoryAmount',
      desc: '',
      args: [],
    );
  }

  /// `Unit Price`
  String get sellOrderHistorySingle {
    return Intl.message(
      'Unit Price',
      name: 'sellOrderHistorySingle',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get sellOrderHistoryNumber {
    return Intl.message(
      'Quantity',
      name: 'sellOrderHistoryNumber',
      desc: '',
      args: [],
    );
  }

  /// `Payment Type`
  String get sellOrderHistoryPayType {
    return Intl.message(
      'Payment Type',
      name: 'sellOrderHistoryPayType',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get sellOrderHistoryTime {
    return Intl.message(
      'Time',
      name: 'sellOrderHistoryTime',
      desc: '',
      args: [],
    );
  }

  /// `Total Cancelled`
  String get sellOrderHistoryCancel {
    return Intl.message(
      'Total Cancelled',
      name: 'sellOrderHistoryCancel',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get sellOrderHistoryInfo {
    return Intl.message(
      'Details',
      name: 'sellOrderHistoryInfo',
      desc: '',
      args: [],
    );
  }

  /// `Sell Order Details`
  String get sellOrderInfoViewTitle {
    return Intl.message(
      'Sell Order Details',
      name: 'sellOrderInfoViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Entire Order`
  String get sellOrderInfoViewCancelAll {
    return Intl.message(
      'Cancel Entire Order',
      name: 'sellOrderInfoViewCancelAll',
      desc: '',
      args: [],
    );
  }

  /// `Selling Quantity`
  String get sellOrderInfoViewSellAmount {
    return Intl.message(
      'Selling Quantity',
      name: 'sellOrderInfoViewSellAmount',
      desc: '',
      args: [],
    );
  }

  /// `Sold/Remaining`
  String get sellOrderInfoViewAlreadySell {
    return Intl.message(
      'Sold/Remaining',
      name: 'sellOrderInfoViewAlreadySell',
      desc: '',
      args: [],
    );
  }

  /// `Buyer`
  String get sellOrderInfoViewBuyer {
    return Intl.message(
      'Buyer',
      name: 'sellOrderInfoViewBuyer',
      desc: '',
      args: [],
    );
  }

  /// `Buy Order Completion Rate`
  String get sellOrderInfoViewBuyerRate {
    return Intl.message(
      'Buy Order Completion Rate',
      name: 'sellOrderInfoViewBuyerRate',
      desc: '',
      args: [],
    );
  }

  /// `Due to transfer risk control, the buyer requests to change the payment account. Do you agree?`
  String get sellOrderInfoViewChangePayTitle {
    return Intl.message(
      'Due to transfer risk control, the buyer requests to change the payment account. Do you agree?',
      name: 'sellOrderInfoViewChangePayTitle',
      desc: '',
      args: [],
    );
  }

  /// `Order Information`
  String get sellOrderInfoViewInfoTitle {
    return Intl.message(
      'Order Information',
      name: 'sellOrderInfoViewInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get sellOrderInfoViewInfoID {
    return Intl.message(
      'Order ID',
      name: 'sellOrderInfoViewInfoID',
      desc: '',
      args: [],
    );
  }

  /// `Creation Time`
  String get sellOrderInfoViewInfoCreateTime {
    return Intl.message(
      'Creation Time',
      name: 'sellOrderInfoViewInfoCreateTime',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation Time`
  String get sellOrderInfoViewInfoConfirmTime {
    return Intl.message(
      'Confirmation Time',
      name: 'sellOrderInfoViewInfoConfirmTime',
      desc: '',
      args: [],
    );
  }

  /// `Payment Time`
  String get sellOrderInfoViewInfoPayTime {
    return Intl.message(
      'Payment Time',
      name: 'sellOrderInfoViewInfoPayTime',
      desc: '',
      args: [],
    );
  }

  /// `Cancellation Time`
  String get sellOrderInfoViewInfoCancelTime {
    return Intl.message(
      'Cancellation Time',
      name: 'sellOrderInfoViewInfoCancelTime',
      desc: '',
      args: [],
    );
  }

  /// `Release Time`
  String get sellOrderInfoViewInfoPassTime {
    return Intl.message(
      'Release Time',
      name: 'sellOrderInfoViewInfoPassTime',
      desc: '',
      args: [],
    );
  }

  /// `Buyer's Proof`
  String get sellOrderInfoViewPayerPicture {
    return Intl.message(
      'Buyer\'s Proof',
      name: 'sellOrderInfoViewPayerPicture',
      desc: '',
      args: [],
    );
  }

  /// `Accept Order`
  String get sellOrderInfoViewConfirmButtonText {
    return Intl.message(
      'Accept Order',
      name: 'sellOrderInfoViewConfirmButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Confirm to accept the order?`
  String get sellOrderInfoViewConfirmAlertContent {
    return Intl.message(
      'Confirm to accept the order?',
      name: 'sellOrderInfoViewConfirmAlertContent',
      desc: '',
      args: [],
    );
  }

  /// `Release Coins to Buyer`
  String get sellOrderInfoViewPassButtonText {
    return Intl.message(
      'Release Coins to Buyer',
      name: 'sellOrderInfoViewPassButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Delay Release`
  String get sellOrderInfoViewPassDelayButtonText {
    return Intl.message(
      'Delay Release',
      name: 'sellOrderInfoViewPassDelayButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Order`
  String get sellOrderInfoViewCancelAlertTitle {
    return Intl.message(
      'Cancel Order',
      name: 'sellOrderInfoViewCancelAlertTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continuing will cancel the order`
  String get sellOrderInfoViewCancelAlertContent {
    return Intl.message(
      'Continuing will cancel the order',
      name: 'sellOrderInfoViewCancelAlertContent',
      desc: '',
      args: [],
    );
  }

  /// `Release Coins`
  String get sellOrderInfoViewPassAlertTitle {
    return Intl.message(
      'Release Coins',
      name: 'sellOrderInfoViewPassAlertTitle',
      desc: '',
      args: [],
    );
  }

  /// `[Direct Release] Coins will be directly transferred to the buyer`
  String get sellOrderInfoViewPassAlertContent1 {
    return Intl.message(
      '[Direct Release] Coins will be directly transferred to the buyer',
      name: 'sellOrderInfoViewPassAlertContent1',
      desc: '',
      args: [],
    );
  }

  /// `Delay Release`
  String get sellOrderInfoViewPassDelayAlertTitle {
    return Intl.message(
      'Delay Release',
      name: 'sellOrderInfoViewPassDelayAlertTitle',
      desc: '',
      args: [],
    );
  }

  /// `[Delay Release] Coins will be automatically transferred to the buyer after %s minutes`
  String get sellOrderInfoViewPassDelayAlertContent1 {
    return Intl.message(
      '[Delay Release] Coins will be automatically transferred to the buyer after %s minutes',
      name: 'sellOrderInfoViewPassDelayAlertContent1',
      desc: '',
      args: [],
    );
  }

  /// `Release coins to the buyer after minutes`
  String get sellOrderInfoViewPassDelayAlertContent2 {
    return Intl.message(
      'Release coins to the buyer after minutes',
      name: 'sellOrderInfoViewPassDelayAlertContent2',
      desc: '',
      args: [],
    );
  }

  /// `Direct Release`
  String get sellOrderInfoViewPassAlertConfirmText {
    return Intl.message(
      'Direct Release',
      name: 'sellOrderInfoViewPassAlertConfirmText',
      desc: '',
      args: [],
    );
  }

  /// `Delay Release`
  String get sellOrderInfoViewPassAlertCancelText {
    return Intl.message(
      'Delay Release',
      name: 'sellOrderInfoViewPassAlertCancelText',
      desc: '',
      args: [],
    );
  }

  /// `Receiving Account`
  String get sellOrderInfoViewCollectAccount {
    return Intl.message(
      'Receiving Account',
      name: 'sellOrderInfoViewCollectAccount',
      desc: '',
      args: [],
    );
  }

  /// `Listing Information`
  String get sellOrderInfoViewEmptyTitle {
    return Intl.message(
      'Listing Information',
      name: 'sellOrderInfoViewEmptyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Split Order?`
  String get sellOrderInfoViewEmptySplit {
    return Intl.message(
      'Split Order?',
      name: 'sellOrderInfoViewEmptySplit',
      desc: '',
      args: [],
    );
  }

  /// `Single Order Amount Range`
  String get sellOrderInfoViewEmptyRange {
    return Intl.message(
      'Single Order Amount Range',
      name: 'sellOrderInfoViewEmptyRange',
      desc: '',
      args: [],
    );
  }

  /// `Do not release coins if you have not received payment!`
  String get sellOrderInfoViewPassHintText {
    return Intl.message(
      'Do not release coins if you have not received payment!',
      name: 'sellOrderInfoViewPassHintText',
      desc: '',
      args: [],
    );
  }

  /// `Enter Arbitration`
  String get sellOrderInfoViewCustomerTitle {
    return Intl.message(
      'Enter Arbitration',
      name: 'sellOrderInfoViewCustomerTitle',
      desc: '',
      args: [],
    );
  }

  /// `If payment is not received, you will enter the arbitration support interface. Confirm?`
  String get sellOrderInfoViewCustomerContent {
    return Intl.message(
      'If payment is not received, you will enter the arbitration support interface. Confirm?',
      name: 'sellOrderInfoViewCustomerContent',
      desc: '',
      args: [],
    );
  }

  /// `Payment Not Received`
  String get sellOrderInfoViewCustomerButton {
    return Intl.message(
      'Payment Not Received',
      name: 'sellOrderInfoViewCustomerButton',
      desc: '',
      args: [],
    );
  }

  /// `Arbitration Support`
  String get sellOrderInfoViewCustomerViewTitle {
    return Intl.message(
      'Arbitration Support',
      name: 'sellOrderInfoViewCustomerViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `I Have Read`
  String get sellOrderInfoViewHaveRead {
    return Intl.message(
      'I Have Read',
      name: 'sellOrderInfoViewHaveRead',
      desc: '',
      args: [],
    );
  }

  /// `Quick Buy`
  String get buyCoinsQuicklyViewTitle {
    return Intl.message(
      'Quick Buy',
      name: 'buyCoinsQuicklyViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get buyCoinsQuicklyViewPayType {
    return Intl.message(
      'Payment Method',
      name: 'buyCoinsQuicklyViewPayType',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Amount`
  String get buyCoinsQuicklyViewAmount {
    return Intl.message(
      'Purchase Amount',
      name: 'buyCoinsQuicklyViewAmount',
      desc: '',
      args: [],
    );
  }

  /// `Payment Account`
  String get buyCoinsQuicklyViewPayAccount {
    return Intl.message(
      'Payment Account',
      name: 'buyCoinsQuicklyViewPayAccount',
      desc: '',
      args: [],
    );
  }

  /// `Quick Buy`
  String get buyCoinsQuicklyViewButtonText {
    return Intl.message(
      'Quick Buy',
      name: 'buyCoinsQuicklyViewButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the purchase amount`
  String get buyCoinsQuicklyViewAmountHintText {
    return Intl.message(
      'Please enter the purchase amount',
      name: 'buyCoinsQuicklyViewAmountHintText',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get transferViewTitle {
    return Intl.message(
      'Transfer',
      name: 'transferViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Transfer History`
  String get transferViewHistory {
    return Intl.message(
      'Transfer History',
      name: 'transferViewHistory',
      desc: '',
      args: [],
    );
  }

  /// `Transfer via CGpay_Test`
  String get transferViewContentTitle {
    return Intl.message(
      'Transfer via CGpay_Test',
      name: 'transferViewContentTitle',
      desc: '',
      args: [],
    );
  }

  /// `The transfer will directly enter the recipient's account as unavailable balance. Please ensure the account is correct.`
  String get transferViewContent {
    return Intl.message(
      'The transfer will directly enter the recipient\'s account as unavailable balance. Please ensure the account is correct.',
      name: 'transferViewContent',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Address`
  String get transferViewAddress {
    return Intl.message(
      'Wallet Address',
      name: 'transferViewAddress',
      desc: '',
      args: [],
    );
  }

  /// `You can also transfer to the other party via`
  String get transferViewWay1 {
    return Intl.message(
      'You can also transfer to the other party via',
      name: 'transferViewWay1',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get transferViewWay2 {
    return Intl.message('', name: 'transferViewWay2', desc: '', args: []);
  }

  /// `「 Scan 」`
  String get transferViewScan {
    return Intl.message(
      '「 Scan 」',
      name: 'transferViewScan',
      desc: '',
      args: [],
    );
  }

  /// `Recent`
  String get transferViewHistoryLater {
    return Intl.message(
      'Recent',
      name: 'transferViewHistoryLater',
      desc: '',
      args: [],
    );
  }

  /// `Transfer Successful`
  String get transferViewSuss {
    return Intl.message(
      'Transfer Successful',
      name: 'transferViewSuss',
      desc: '',
      args: [],
    );
  }

  /// `The transfer has been successfully credited to the recipient's account`
  String get transferViewSussHint {
    return Intl.message(
      'The transfer has been successfully credited to the recipient\'s account',
      name: 'transferViewSussHint',
      desc: '',
      args: [],
    );
  }

  /// `Transfer Quantity`
  String get transferViewAmount {
    return Intl.message(
      'Transfer Quantity',
      name: 'transferViewAmount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the transfer quantity`
  String get transferViewAmountHintText {
    return Intl.message(
      'Please enter the transfer quantity',
      name: 'transferViewAmountHintText',
      desc: '',
      args: [],
    );
  }

  /// `Memo`
  String get transferViewNote {
    return Intl.message('Memo', name: 'transferViewNote', desc: '', args: []);
  }

  /// `You can enter a memo message`
  String get transferViewNoteHintText {
    return Intl.message(
      'You can enter a memo message',
      name: 'transferViewNoteHintText',
      desc: '',
      args: [],
    );
  }

  /// `Transfer History`
  String get transferHistoryViewTitle {
    return Intl.message(
      'Transfer History',
      name: 'transferHistoryViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get transferHistoryViewToday {
    return Intl.message(
      'Today',
      name: 'transferHistoryViewToday',
      desc: '',
      args: [],
    );
  }

  /// `This Month`
  String get transferHistoryViewMonth {
    return Intl.message(
      'This Month',
      name: 'transferHistoryViewMonth',
      desc: '',
      args: [],
    );
  }

  /// `After successful transfer, it will enter the recipient's unavailable balance`
  String get transferViewAlertContent {
    return Intl.message(
      'After successful transfer, it will enter the recipient\'s unavailable balance',
      name: 'transferViewAlertContent',
      desc: '',
      args: [],
    );
  }

  /// `My QR Code`
  String get qrcodeViewTitle {
    return Intl.message(
      'My QR Code',
      name: 'qrcodeViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Save QR Code`
  String get qrcodeViewSave {
    return Intl.message(
      'Save QR Code',
      name: 'qrcodeViewSave',
      desc: '',
      args: [],
    );
  }

  /// `Scan to Pay`
  String get payViewTitle {
    return Intl.message(
      'Scan to Pay',
      name: 'payViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Payment Amount`
  String get payViewAmount {
    return Intl.message(
      'Payment Amount',
      name: 'payViewAmount',
      desc: '',
      args: [],
    );
  }

  /// `Remaining Payment Time`
  String get payViewCountdownTime {
    return Intl.message(
      'Remaining Payment Time',
      name: 'payViewCountdownTime',
      desc: '',
      args: [],
    );
  }

  /// `My Balance`
  String get payViewBalance {
    return Intl.message(
      'My Balance',
      name: 'payViewBalance',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get payViewOrderId {
    return Intl.message('Order ID', name: 'payViewOrderId', desc: '', args: []);
  }

  /// `Creation Time`
  String get payViewCreateTime {
    return Intl.message(
      'Creation Time',
      name: 'payViewCreateTime',
      desc: '',
      args: [],
    );
  }

  /// `End Time`
  String get payViewEndTime {
    return Intl.message('End Time', name: 'payViewEndTime', desc: '', args: []);
  }

  /// `Payment Successful`
  String get payViewSuccess {
    return Intl.message(
      'Payment Successful',
      name: 'payViewSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Please wait for the amount to be credited`
  String get payViewSuccessContent {
    return Intl.message(
      'Please wait for the amount to be credited',
      name: 'payViewSuccessContent',
      desc: '',
      args: [],
    );
  }

  /// `Payment code has expired`
  String get payViewFailed {
    return Intl.message(
      'Payment code has expired',
      name: 'payViewFailed',
      desc: '',
      args: [],
    );
  }

  /// `Pay Now`
  String get payViewButtonText {
    return Intl.message(
      'Pay Now',
      name: 'payViewButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Daily Check-in Rewards`
  String get activitySignInViewTitle {
    return Intl.message(
      'Daily Check-in Rewards',
      name: 'activitySignInViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Consecutive Check-ins`
  String get activitySignInViewAlreadyDays {
    return Intl.message(
      'Consecutive Check-ins',
      name: 'activitySignInViewAlreadyDays',
      desc: '',
      args: [],
    );
  }

  /// `Today's Accumulated Recharge`
  String get activitySignInViewRecharge {
    return Intl.message(
      'Today\'s Accumulated Recharge',
      name: 'activitySignInViewRecharge',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get activitySignInViewIn {
    return Intl.message(
      'Day',
      name: 'activitySignInViewIn',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get activitySignInViewDays {
    return Intl.message('', name: 'activitySignInViewDays', desc: '', args: []);
  }

  /// `Not Reached`
  String get activitySignInViewNotReached {
    return Intl.message(
      'Not Reached',
      name: 'activitySignInViewNotReached',
      desc: '',
      args: [],
    );
  }

  /// `Claim`
  String get activitySignInViewReached {
    return Intl.message(
      'Claim',
      name: 'activitySignInViewReached',
      desc: '',
      args: [],
    );
  }

  /// `Claimed`
  String get activitySignInViewAlreadyReached {
    return Intl.message(
      'Claimed',
      name: 'activitySignInViewAlreadyReached',
      desc: '',
      args: [],
    );
  }

  /// `Check In Now`
  String get activitySignInViewSignIn {
    return Intl.message(
      'Check In Now',
      name: 'activitySignInViewSignIn',
      desc: '',
      args: [],
    );
  }

  /// `Trading Rewards`
  String get activityTradePriceViewTitle {
    return Intl.message(
      'Trading Rewards',
      name: 'activityTradePriceViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Quick Exchange History`
  String get flashOrderHistoryViewTitle {
    return Intl.message(
      'Quick Exchange History',
      name: 'flashOrderHistoryViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get flashOrderHistoryViewFilter {
    return Intl.message(
      'Filter',
      name: 'flashOrderHistoryViewFilter',
      desc: '',
      args: [],
    );
  }

  /// `Time Range`
  String get flashOrderHistoryViewTimeRange {
    return Intl.message(
      'Time Range',
      name: 'flashOrderHistoryViewTimeRange',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get flashOrderHistoryViewTimeDay1 {
    return Intl.message(
      'Today',
      name: 'flashOrderHistoryViewTimeDay1',
      desc: '',
      args: [],
    );
  }

  /// `7 Days`
  String get flashOrderHistoryViewTimeDay7 {
    return Intl.message(
      '7 Days',
      name: 'flashOrderHistoryViewTimeDay7',
      desc: '',
      args: [],
    );
  }

  /// `30 Days`
  String get flashOrderHistoryViewTimeDay30 {
    return Intl.message(
      '30 Days',
      name: 'flashOrderHistoryViewTimeDay30',
      desc: '',
      args: [],
    );
  }

  /// `Order Status`
  String get flashOrderHistoryViewOrderType {
    return Intl.message(
      'Order Status',
      name: 'flashOrderHistoryViewOrderType',
      desc: '',
      args: [],
    );
  }

  /// `Pending Payment`
  String get flashOrderHistoryViewOrderTypePay {
    return Intl.message(
      'Pending Payment',
      name: 'flashOrderHistoryViewOrderTypePay',
      desc: '',
      args: [],
    );
  }

  /// `Pending Confirmation`
  String get flashOrderHistoryViewOrderTypeConfirm {
    return Intl.message(
      'Pending Confirmation',
      name: 'flashOrderHistoryViewOrderTypeConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get flashOrderHistoryViewOrderTypeDone {
    return Intl.message(
      'Completed',
      name: 'flashOrderHistoryViewOrderTypeDone',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get flashOrderHistoryViewOrderTypeCancel {
    return Intl.message(
      'Cancelled',
      name: 'flashOrderHistoryViewOrderTypeCancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get flashOrderHistoryViewButtonConfirm {
    return Intl.message(
      'Confirm',
      name: 'flashOrderHistoryViewButtonConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get flashOrderHistoryViewButtonCancel {
    return Intl.message(
      'Cancel',
      name: 'flashOrderHistoryViewButtonCancel',
      desc: '',
      args: [],
    );
  }

  /// `Quick Exchange Details`
  String get flashOrderInfoViewTitle {
    return Intl.message(
      'Quick Exchange Details',
      name: 'flashOrderInfoViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please strictly follow the displayed USDT amount for transfer`
  String get flashOrderInfoViewAlert {
    return Intl.message(
      'Please strictly follow the displayed USDT amount for transfer',
      name: 'flashOrderInfoViewAlert',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get flashOrderInfoViewAddress {
    return Intl.message(
      'Address',
      name: 'flashOrderInfoViewAddress',
      desc: '',
      args: [],
    );
  }

  /// `Deposit Address`
  String get flashOrderInfoViewRechargeAddress {
    return Intl.message(
      'Deposit Address',
      name: 'flashOrderInfoViewRechargeAddress',
      desc: '',
      args: [],
    );
  }

  /// `This address only accepts USDT`
  String get flashOrderInfoViewAddressHint {
    return Intl.message(
      'This address only accepts USDT',
      name: 'flashOrderInfoViewAddressHint',
      desc: '',
      args: [],
    );
  }

  /// `Estimated Exchange Amount`
  String get flashOrderInfoViewCanExchange {
    return Intl.message(
      'Estimated Exchange Amount',
      name: 'flashOrderInfoViewCanExchange',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get flashOrderInfoViewId {
    return Intl.message(
      'Order ID',
      name: 'flashOrderInfoViewId',
      desc: '',
      args: [],
    );
  }

  /// `Creation Time`
  String get flashOrderInfoViewCreateTime {
    return Intl.message(
      'Creation Time',
      name: 'flashOrderInfoViewCreateTime',
      desc: '',
      args: [],
    );
  }

  /// `Payment Time`
  String get flashOrderInfoViewPayTime {
    return Intl.message(
      'Payment Time',
      name: 'flashOrderInfoViewPayTime',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation Time`
  String get flashOrderInfoViewConfirmTime {
    return Intl.message(
      'Confirmation Time',
      name: 'flashOrderInfoViewConfirmTime',
      desc: '',
      args: [],
    );
  }

  /// `Cancellation Time`
  String get flashOrderInfoViewCancelTime {
    return Intl.message(
      'Cancellation Time',
      name: 'flashOrderInfoViewCancelTime',
      desc: '',
      args: [],
    );
  }

  /// `Protocol`
  String get flashOrderInfoViewLink {
    return Intl.message(
      'Protocol',
      name: 'flashOrderInfoViewLink',
      desc: '',
      args: [],
    );
  }

  /// `I Have Transferred`
  String get flashOrderInfoViewButton {
    return Intl.message(
      'I Have Transferred',
      name: 'flashOrderInfoViewButton',
      desc: '',
      args: [],
    );
  }

  /// `Timeout Cancellation`
  String get flashOrderInfoViewTimeOut {
    return Intl.message(
      'Timeout Cancellation',
      name: 'flashOrderInfoViewTimeOut',
      desc: '',
      args: [],
    );
  }

  /// `Paid`
  String get flashOrderInfoViewAlreadyPay {
    return Intl.message(
      'Paid',
      name: 'flashOrderInfoViewAlreadyPay',
      desc: '',
      args: [],
    );
  }

  /// `Confirmed`
  String get flashOrderInfoViewAlreadyConfirm {
    return Intl.message(
      'Confirmed',
      name: 'flashOrderInfoViewAlreadyConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Expiration Time`
  String get flashOrderInfoViewLateTime {
    return Intl.message(
      'Expiration Time',
      name: 'flashOrderInfoViewLateTime',
      desc: '',
      args: [],
    );
  }

  /// `Completion Time`
  String get flashOrderInfoViewDoneTime {
    return Intl.message(
      'Completion Time',
      name: 'flashOrderInfoViewDoneTime',
      desc: '',
      args: [],
    );
  }

  /// `Network Request Error`
  String get apiErrorTitle {
    return Intl.message(
      'Network Request Error',
      name: 'apiErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while requesting the server. Please try again later.\nError Code: -102`
  String get apiErrorContent {
    return Intl.message(
      'An error occurred while requesting the server. Please try again later.\nError Code: -102',
      name: 'apiErrorContent',
      desc: '',
      args: [],
    );
  }

  /// `Communication Connection Error`
  String get wssErrorTitle {
    return Intl.message(
      'Communication Connection Error',
      name: 'wssErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Failed to communicate with the server. Please try again later.\nError Code: -103`
  String get wssErrorContent {
    return Intl.message(
      'Failed to communicate with the server. Please try again later.\nError Code: -103',
      name: 'wssErrorContent',
      desc: '',
      args: [],
    );
  }

  /// `Failed to Get Configuration`
  String get settingErrorTitle {
    return Intl.message(
      'Failed to Get Configuration',
      name: 'settingErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please check your network settings or try again later.\nError Code: -101`
  String get settingErrorContent {
    return Intl.message(
      'Please check your network settings or try again later.\nError Code: -101',
      name: 'settingErrorContent',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedbackPriceViewTitle {
    return Intl.message(
      'Feedback',
      name: 'feedbackPriceViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your feedback`
  String get feedbackPriceViewInputTitle {
    return Intl.message(
      'Please enter your feedback',
      name: 'feedbackPriceViewInputTitle',
      desc: '',
      args: [],
    );
  }

  /// `Feedback content must be more than 10 characters`
  String get feedbackPriceViewInputHintText {
    return Intl.message(
      'Feedback content must be more than 10 characters',
      name: 'feedbackPriceViewInputHintText',
      desc: '',
      args: [],
    );
  }

  /// `Upload Attachment (Optional)`
  String get feedbackPriceViewUpdateTitle {
    return Intl.message(
      'Upload Attachment (Optional)',
      name: 'feedbackPriceViewUpdateTitle',
      desc: '',
      args: [],
    );
  }

  /// `Submit Feedback`
  String get feedbackPriceViewConfirm {
    return Intl.message(
      'Submit Feedback',
      name: 'feedbackPriceViewConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Valid feedback with verification and adoption will be rewarded!`
  String get feedbackPriceViewAlertContent {
    return Intl.message(
      'Valid feedback with verification and adoption will be rewarded!',
      name: 'feedbackPriceViewAlertContent',
      desc: '',
      args: [],
    );
  }

  /// `Submission Successful`
  String get feedbackPriceViewAlertSuccessTitle {
    return Intl.message(
      'Submission Successful',
      name: 'feedbackPriceViewAlertSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Valid feedback with verification and adoption will be rewarded!`
  String get feedbackPriceViewAlertSuccessContent {
    return Intl.message(
      'Valid feedback with verification and adoption will be rewarded!',
      name: 'feedbackPriceViewAlertSuccessContent',
      desc: '',
      args: [],
    );
  }

  /// `Your feedback is too short. Please enter at least 10 characters.`
  String get feedbackPriceViewTextLengthShort {
    return Intl.message(
      'Your feedback is too short. Please enter at least 10 characters.',
      name: 'feedbackPriceViewTextLengthShort',
      desc: '',
      args: [],
    );
  }

  /// `Paying Account`
  String get accountTypePaying {
    return Intl.message(
      'Paying Account',
      name: 'accountTypePaying',
      desc: '',
      args: [],
    );
  }

  /// `Receiving Account`
  String get accountTypeReceiving {
    return Intl.message(
      'Receiving Account',
      name: 'accountTypeReceiving',
      desc: '',
      args: [],
    );
  }

  /// `Payment Type`
  String get accountType {
    return Intl.message(
      'Payment Type',
      name: 'accountType',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
