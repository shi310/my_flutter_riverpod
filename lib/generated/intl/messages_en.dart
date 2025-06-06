// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(name) => "File size exceeds the maximum limit (${name}MB)";

  static String m1(name) => "Feedback Center ( ${name} )";

  static String m2(name) =>
      "Continuing will set this ${name} account as default. Proceed?";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "accountType": MessageLookupByLibrary.simpleMessage("Payment Type"),
    "accountTypePaying": MessageLookupByLibrary.simpleMessage("Paying Account"),
    "accountTypeReceiving": MessageLookupByLibrary.simpleMessage(
      "Receiving Account",
    ),
    "activityClosed": MessageLookupByLibrary.simpleMessage("Activity Closed"),
    "activitySignInViewAlreadyDays": MessageLookupByLibrary.simpleMessage(
      "Consecutive Check-ins",
    ),
    "activitySignInViewAlreadyReached": MessageLookupByLibrary.simpleMessage(
      "Claimed",
    ),
    "activitySignInViewDays": MessageLookupByLibrary.simpleMessage(""),
    "activitySignInViewIn": MessageLookupByLibrary.simpleMessage("Day"),
    "activitySignInViewNotReached": MessageLookupByLibrary.simpleMessage(
      "Not Reached",
    ),
    "activitySignInViewReached": MessageLookupByLibrary.simpleMessage("Claim"),
    "activitySignInViewRecharge": MessageLookupByLibrary.simpleMessage(
      "Today\'s Accumulated Recharge",
    ),
    "activitySignInViewSignIn": MessageLookupByLibrary.simpleMessage(
      "Check In Now",
    ),
    "activitySignInViewTitle": MessageLookupByLibrary.simpleMessage(
      "Daily Check-in Rewards",
    ),
    "activityTradePriceViewTitle": MessageLookupByLibrary.simpleMessage(
      "Trading Rewards",
    ),
    "album": MessageLookupByLibrary.simpleMessage("Album"),
    "apiErrorContent": MessageLookupByLibrary.simpleMessage(
      "An error occurred while requesting the server. Please try again later.\nError Code: -102",
    ),
    "apiErrorTitle": MessageLookupByLibrary.simpleMessage(
      "Network Request Error",
    ),
    "bankViewErrorText": MessageLookupByLibrary.simpleMessage(
      "Please set up your fund password first",
    ),
    "bankViewHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter the bank name",
    ),
    "bankViewTitle": MessageLookupByLibrary.simpleMessage("Select Bank"),
    "bottomChat": MessageLookupByLibrary.simpleMessage("Support"),
    "bottomFlashExchange": MessageLookupByLibrary.simpleMessage(
      "Quick Exchange",
    ),
    "bottomHome": MessageLookupByLibrary.simpleMessage("Home"),
    "bottomMine": MessageLookupByLibrary.simpleMessage("My"),
    "bottomScan": MessageLookupByLibrary.simpleMessage("Scan"),
    "buyCoinsQuicklyViewAmount": MessageLookupByLibrary.simpleMessage(
      "Purchase Amount",
    ),
    "buyCoinsQuicklyViewAmountHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter the purchase amount",
    ),
    "buyCoinsQuicklyViewButtonText": MessageLookupByLibrary.simpleMessage(
      "Quick Buy",
    ),
    "buyCoinsQuicklyViewPayAccount": MessageLookupByLibrary.simpleMessage(
      "Payment Account",
    ),
    "buyCoinsQuicklyViewPayType": MessageLookupByLibrary.simpleMessage(
      "Payment Method",
    ),
    "buyCoinsQuicklyViewTitle": MessageLookupByLibrary.simpleMessage(
      "Quick Buy",
    ),
    "buyOrderHistoryAll": MessageLookupByLibrary.simpleMessage("All"),
    "buyOrderHistoryAmount": MessageLookupByLibrary.simpleMessage("Amount"),
    "buyOrderHistoryCancel": MessageLookupByLibrary.simpleMessage("Cancelled"),
    "buyOrderHistoryDone": MessageLookupByLibrary.simpleMessage("Completed"),
    "buyOrderHistoryIng": MessageLookupByLibrary.simpleMessage("In Progress"),
    "buyOrderHistoryNumber": MessageLookupByLibrary.simpleMessage("Quantity"),
    "buyOrderHistoryPayType": MessageLookupByLibrary.simpleMessage(
      "Payment Type",
    ),
    "buyOrderHistorySingle": MessageLookupByLibrary.simpleMessage("Unit Price"),
    "buyOrderHistoryTime": MessageLookupByLibrary.simpleMessage("Time"),
    "buyOrderHistoryTitle": MessageLookupByLibrary.simpleMessage("Buy Orders"),
    "buyOrderHistoryTotalAll": MessageLookupByLibrary.simpleMessage(
      "Total Purchases",
    ),
    "buyOrderHistoryTotalCancel": MessageLookupByLibrary.simpleMessage(
      "Total Cancelled",
    ),
    "buyOrderHistoryTotalDone": MessageLookupByLibrary.simpleMessage(
      "Total Completed",
    ),
    "buyOrderHistoryTotalIng": MessageLookupByLibrary.simpleMessage(
      "In Progress",
    ),
    "buyOrderInfoViewAlertTitle": MessageLookupByLibrary.simpleMessage(
      "Precautions",
    ),
    "buyOrderInfoViewBuyAmount": MessageLookupByLibrary.simpleMessage(
      "Purchase Quantity",
    ),
    "buyOrderInfoViewBuyRate": MessageLookupByLibrary.simpleMessage(
      "Buy Order Completion Rate",
    ),
    "buyOrderInfoViewCancel": MessageLookupByLibrary.simpleMessage(
      "Cancel Order",
    ),
    "buyOrderInfoViewCancelReason1": MessageLookupByLibrary.simpleMessage(
      "Abnormal recipient card number or account",
    ),
    "buyOrderInfoViewCancelReason2": MessageLookupByLibrary.simpleMessage(
      "Incorrect recipient bank branch",
    ),
    "buyOrderInfoViewCancelReason3": MessageLookupByLibrary.simpleMessage(
      "Recipient card number does not match the name",
    ),
    "buyOrderInfoViewCancelReason4": MessageLookupByLibrary.simpleMessage(
      "No longer want to buy",
    ),
    "buyOrderInfoViewCancelTime": MessageLookupByLibrary.simpleMessage(
      "Cancellation Time",
    ),
    "buyOrderInfoViewChangeBankButtonText":
        MessageLookupByLibrary.simpleMessage("Request Change"),
    "buyOrderInfoViewChangeBankContent": MessageLookupByLibrary.simpleMessage(
      "You can request the seller to change the payment account and wait for their response.",
    ),
    "buyOrderInfoViewChangeBankSecondTitle":
        MessageLookupByLibrary.simpleMessage(
          "Alipay risk, can you switch to another Alipay account for transfer?",
        ),
    "buyOrderInfoViewChangeBankTitle": MessageLookupByLibrary.simpleMessage(
      "Change Payment Account",
    ),
    "buyOrderInfoViewCollectAccount": MessageLookupByLibrary.simpleMessage(
      "Receiving Account",
    ),
    "buyOrderInfoViewCollectBank": MessageLookupByLibrary.simpleMessage(
      "Receiving Bank",
    ),
    "buyOrderInfoViewCollectBankCard": MessageLookupByLibrary.simpleMessage(
      "Receiving Bank Card Number",
    ),
    "buyOrderInfoViewCollectBankCardAddress":
        MessageLookupByLibrary.simpleMessage("Account Opening Branch"),
    "buyOrderInfoViewCollectName": MessageLookupByLibrary.simpleMessage(
      "Recipient",
    ),
    "buyOrderInfoViewCollectQrcode": MessageLookupByLibrary.simpleMessage(
      "Payment QR Code",
    ),
    "buyOrderInfoViewCollectWallet": MessageLookupByLibrary.simpleMessage(
      "Wallet Address",
    ),
    "buyOrderInfoViewCreateTime": MessageLookupByLibrary.simpleMessage(
      "Creation Time",
    ),
    "buyOrderInfoViewDownloadQrcode": MessageLookupByLibrary.simpleMessage(
      "Download QR Code",
    ),
    "buyOrderInfoViewOrderCancel": MessageLookupByLibrary.simpleMessage(
      "Cancel Order",
    ),
    "buyOrderInfoViewOrderCancelContent": MessageLookupByLibrary.simpleMessage(
      "Continuing will cancel the order",
    ),
    "buyOrderInfoViewOrderCancelSecondTitle": MessageLookupByLibrary.simpleMessage(
      "Repeated unwarranted cancellations will restrict your ability to buy coins",
    ),
    "buyOrderInfoViewOrderId": MessageLookupByLibrary.simpleMessage("Order ID"),
    "buyOrderInfoViewOrderInfo": MessageLookupByLibrary.simpleMessage(
      "Order Information",
    ),
    "buyOrderInfoViewPayAccount": MessageLookupByLibrary.simpleMessage(
      "Payment Account",
    ),
    "buyOrderInfoViewSeller": MessageLookupByLibrary.simpleMessage("Seller"),
    "buyOrderInfoViewStep1": MessageLookupByLibrary.simpleMessage(
      "Buyer Placed Order",
    ),
    "buyOrderInfoViewStep2": MessageLookupByLibrary.simpleMessage(
      "Seller Accepted Order",
    ),
    "buyOrderInfoViewStep3": MessageLookupByLibrary.simpleMessage("Buyer Paid"),
    "buyOrderInfoViewStep4": MessageLookupByLibrary.simpleMessage(
      "Seller Released Coins",
    ),
    "buyOrderInfoViewStepHintText1": MessageLookupByLibrary.simpleMessage(
      "Displayed after the seller accepts the order",
    ),
    "buyOrderInfoViewStepUpload3": MessageLookupByLibrary.simpleMessage(
      "Upload Proof",
    ),
    "buyOrderInfoViewTitle": MessageLookupByLibrary.simpleMessage(
      "Buy Order Details",
    ),
    "buyOrderViewAll": MessageLookupByLibrary.simpleMessage("All"),
    "buyOrderViewAmount": MessageLookupByLibrary.simpleMessage("Amount"),
    "buyOrderViewAmountCustomize": MessageLookupByLibrary.simpleMessage(
      "Amount Range",
    ),
    "buyOrderViewBanks": MessageLookupByLibrary.simpleMessage(
      "Payment Methods",
    ),
    "buyOrderViewBuy": MessageLookupByLibrary.simpleMessage("Buy"),
    "buyOrderViewBuyAll": MessageLookupByLibrary.simpleMessage("All"),
    "buyOrderViewBuyAmount": MessageLookupByLibrary.simpleMessage(
      "Available to Buy",
    ),
    "buyOrderViewErrorMax": MessageLookupByLibrary.simpleMessage(
      "Purchase amount cannot exceed",
    ),
    "buyOrderViewErrorMin": MessageLookupByLibrary.simpleMessage(
      "Purchase amount cannot be less than",
    ),
    "buyOrderViewFilter": MessageLookupByLibrary.simpleMessage("Filter"),
    "buyOrderViewGoAndPay": MessageLookupByLibrary.simpleMessage("Go to Pay"),
    "buyOrderViewLimit": MessageLookupByLibrary.simpleMessage("Limit"),
    "buyOrderViewMax": MessageLookupByLibrary.simpleMessage("Large Amount"),
    "buyOrderViewMaxHintText": MessageLookupByLibrary.simpleMessage("Maximum"),
    "buyOrderViewMinHintText": MessageLookupByLibrary.simpleMessage("Minimum"),
    "buyOrderViewRanger": MessageLookupByLibrary.simpleMessage("Amount Range"),
    "buyOrderViewSellAmount": MessageLookupByLibrary.simpleMessage(
      "Selling Quantity",
    ),
    "buyOrderViewSmall": MessageLookupByLibrary.simpleMessage("Small Amount"),
    "buyOrderViewTitle": MessageLookupByLibrary.simpleMessage("Buy Orders"),
    "buyOrderViewWantToBuy": MessageLookupByLibrary.simpleMessage(
      "I Want to Buy",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "chatViewCustomerContent": MessageLookupByLibrary.simpleMessage(
      "Providing solutions for various issues",
    ),
    "chatViewCustomerTitle": MessageLookupByLibrary.simpleMessage(
      "Online Support",
    ),
    "chatViewNotifyContent": MessageLookupByLibrary.simpleMessage(
      "Thank you for your continued support! We\'ve launched a new feature...",
    ),
    "chatViewNotifyPersonalContent": MessageLookupByLibrary.simpleMessage(
      "Thank you for your continued support! We\'ve launched a new feature...",
    ),
    "chatViewNotifyPersonalTitle": MessageLookupByLibrary.simpleMessage(
      "Personal Notification",
    ),
    "chatViewNotifyTitle": MessageLookupByLibrary.simpleMessage(
      "System Announcement",
    ),
    "chatViewTitle": MessageLookupByLibrary.simpleMessage("Online Support"),
    "close": MessageLookupByLibrary.simpleMessage("Close"),
    "collectType": MessageLookupByLibrary.simpleMessage("Payment Method"),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirmLater": MessageLookupByLibrary.simpleMessage("Confirm Later"),
    "connectFailed": MessageLookupByLibrary.simpleMessage(
      "Failed to Initialize Connection",
    ),
    "connecting": MessageLookupByLibrary.simpleMessage("Connecting"),
    "copy": MessageLookupByLibrary.simpleMessage("Copy"),
    "copySuccess": MessageLookupByLibrary.simpleMessage("Copied to Clipboard"),
    "customerHelpViewTitle": MessageLookupByLibrary.simpleMessage(
      "Customer Support",
    ),
    "customerNoCert": MessageLookupByLibrary.simpleMessage(
      "Arbitration support not configured yet",
    ),
    "customerViewTitleFaq": MessageLookupByLibrary.simpleMessage("FAQ"),
    "customerViewTitleGuest": MessageLookupByLibrary.simpleMessage(
      "Guest Support",
    ),
    "customerViewTitleUser": MessageLookupByLibrary.simpleMessage(
      "Support List",
    ),
    "dataEmpty": MessageLookupByLibrary.simpleMessage("No Data Available"),
    "dataError": MessageLookupByLibrary.simpleMessage("Failed to Load Data"),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "editNicknameViewConfirm": MessageLookupByLibrary.simpleMessage(
      "Confirm Edit",
    ),
    "editNicknameViewHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter your new nickname",
    ),
    "editNicknameViewTitle": MessageLookupByLibrary.simpleMessage(
      "Edit Nickname",
    ),
    "faceVerifiedViewButton": MessageLookupByLibrary.simpleMessage(
      "Face Verification",
    ),
    "faceVerifiedViewNotice": MessageLookupByLibrary.simpleMessage(
      "For your account security, please complete face verification",
    ),
    "faceVerifiedViewTitle": MessageLookupByLibrary.simpleMessage(
      "Face Recognition",
    ),
    "faqHot": MessageLookupByLibrary.simpleMessage("HOT"),
    "faqNormal": MessageLookupByLibrary.simpleMessage("General"),
    "faqTitle": MessageLookupByLibrary.simpleMessage("FAQ"),
    "feedbackPriceViewAlertContent": MessageLookupByLibrary.simpleMessage(
      "Valid feedback with verification and adoption will be rewarded!",
    ),
    "feedbackPriceViewAlertSuccessContent":
        MessageLookupByLibrary.simpleMessage(
          "Valid feedback with verification and adoption will be rewarded!",
        ),
    "feedbackPriceViewAlertSuccessTitle": MessageLookupByLibrary.simpleMessage(
      "Submission Successful",
    ),
    "feedbackPriceViewConfirm": MessageLookupByLibrary.simpleMessage(
      "Submit Feedback",
    ),
    "feedbackPriceViewInputHintText": MessageLookupByLibrary.simpleMessage(
      "Feedback content must be more than 10 characters",
    ),
    "feedbackPriceViewInputTitle": MessageLookupByLibrary.simpleMessage(
      "Please enter your feedback",
    ),
    "feedbackPriceViewTextLengthShort": MessageLookupByLibrary.simpleMessage(
      "Your feedback is too short. Please enter at least 10 characters.",
    ),
    "feedbackPriceViewTitle": MessageLookupByLibrary.simpleMessage("Feedback"),
    "feedbackPriceViewUpdateTitle": MessageLookupByLibrary.simpleMessage(
      "Upload Attachment (Optional)",
    ),
    "fileSizeOut": m0,
    "flashOrderHistoryViewButtonCancel": MessageLookupByLibrary.simpleMessage(
      "Cancel",
    ),
    "flashOrderHistoryViewButtonConfirm": MessageLookupByLibrary.simpleMessage(
      "Confirm",
    ),
    "flashOrderHistoryViewFilter": MessageLookupByLibrary.simpleMessage(
      "Filter",
    ),
    "flashOrderHistoryViewOrderType": MessageLookupByLibrary.simpleMessage(
      "Order Status",
    ),
    "flashOrderHistoryViewOrderTypeCancel":
        MessageLookupByLibrary.simpleMessage("Cancelled"),
    "flashOrderHistoryViewOrderTypeConfirm":
        MessageLookupByLibrary.simpleMessage("Pending Confirmation"),
    "flashOrderHistoryViewOrderTypeDone": MessageLookupByLibrary.simpleMessage(
      "Completed",
    ),
    "flashOrderHistoryViewOrderTypePay": MessageLookupByLibrary.simpleMessage(
      "Pending Payment",
    ),
    "flashOrderHistoryViewTimeDay1": MessageLookupByLibrary.simpleMessage(
      "Today",
    ),
    "flashOrderHistoryViewTimeDay30": MessageLookupByLibrary.simpleMessage(
      "30 Days",
    ),
    "flashOrderHistoryViewTimeDay7": MessageLookupByLibrary.simpleMessage(
      "7 Days",
    ),
    "flashOrderHistoryViewTimeRange": MessageLookupByLibrary.simpleMessage(
      "Time Range",
    ),
    "flashOrderHistoryViewTitle": MessageLookupByLibrary.simpleMessage(
      "Quick Exchange History",
    ),
    "flashOrderInfoViewAddress": MessageLookupByLibrary.simpleMessage(
      "Address",
    ),
    "flashOrderInfoViewAddressHint": MessageLookupByLibrary.simpleMessage(
      "This address only accepts USDT",
    ),
    "flashOrderInfoViewAlert": MessageLookupByLibrary.simpleMessage(
      "Please strictly follow the displayed USDT amount for transfer",
    ),
    "flashOrderInfoViewAlreadyConfirm": MessageLookupByLibrary.simpleMessage(
      "Confirmed",
    ),
    "flashOrderInfoViewAlreadyPay": MessageLookupByLibrary.simpleMessage(
      "Paid",
    ),
    "flashOrderInfoViewButton": MessageLookupByLibrary.simpleMessage(
      "I Have Transferred",
    ),
    "flashOrderInfoViewCanExchange": MessageLookupByLibrary.simpleMessage(
      "Estimated Exchange Amount",
    ),
    "flashOrderInfoViewCancelTime": MessageLookupByLibrary.simpleMessage(
      "Cancellation Time",
    ),
    "flashOrderInfoViewConfirmTime": MessageLookupByLibrary.simpleMessage(
      "Confirmation Time",
    ),
    "flashOrderInfoViewCreateTime": MessageLookupByLibrary.simpleMessage(
      "Creation Time",
    ),
    "flashOrderInfoViewDoneTime": MessageLookupByLibrary.simpleMessage(
      "Completion Time",
    ),
    "flashOrderInfoViewId": MessageLookupByLibrary.simpleMessage("Order ID"),
    "flashOrderInfoViewLateTime": MessageLookupByLibrary.simpleMessage(
      "Expiration Time",
    ),
    "flashOrderInfoViewLink": MessageLookupByLibrary.simpleMessage("Protocol"),
    "flashOrderInfoViewPayTime": MessageLookupByLibrary.simpleMessage(
      "Payment Time",
    ),
    "flashOrderInfoViewRechargeAddress": MessageLookupByLibrary.simpleMessage(
      "Deposit Address",
    ),
    "flashOrderInfoViewTimeOut": MessageLookupByLibrary.simpleMessage(
      "Timeout Cancellation",
    ),
    "flashOrderInfoViewTitle": MessageLookupByLibrary.simpleMessage(
      "Quick Exchange Details",
    ),
    "flashViewCgb": MessageLookupByLibrary.simpleMessage("CGB"),
    "flashViewCheckGet": MessageLookupByLibrary.simpleMessage(
      "Estimated to Receive",
    ),
    "flashViewCheckSure": MessageLookupByLibrary.simpleMessage(
      "Confirm Exchange?",
    ),
    "flashViewCheckTitle": MessageLookupByLibrary.simpleMessage(
      "Confirm Quick Exchange",
    ),
    "flashViewExchange": MessageLookupByLibrary.simpleMessage("Exchange"),
    "flashViewExchangeAmount": MessageLookupByLibrary.simpleMessage(
      "Estimated Exchange Amount",
    ),
    "flashViewExchangeRate": MessageLookupByLibrary.simpleMessage(
      "Current Exchange Rate",
    ),
    "flashViewHistory": MessageLookupByLibrary.simpleMessage(
      "Exchange History",
    ),
    "flashViewProtocolAlert": MessageLookupByLibrary.simpleMessage(
      "Please ensure that the withdrawal network you choose is the same as the deposit network, otherwise asset loss may occur",
    ),
    "flashViewProtocolChoose": MessageLookupByLibrary.simpleMessage(
      "Select Mainnet Protocol",
    ),
    "flashViewProtocolErc": MessageLookupByLibrary.simpleMessage("ERC20"),
    "flashViewProtocolTitle": MessageLookupByLibrary.simpleMessage(
      "Mainnet Protocol",
    ),
    "flashViewProtocolTrc": MessageLookupByLibrary.simpleMessage("TRC20"),
    "flashViewTitle": MessageLookupByLibrary.simpleMessage(
      "Fast and Secure Exchange",
    ),
    "flashViewUsdt": MessageLookupByLibrary.simpleMessage("USDT"),
    "free": MessageLookupByLibrary.simpleMessage("Free"),
    "free2": MessageLookupByLibrary.simpleMessage("Activity Gift"),
    "freeDone": MessageLookupByLibrary.simpleMessage("Gifted"),
    "freeReady": MessageLookupByLibrary.simpleMessage("Pending Gift"),
    "goConfirm": MessageLookupByLibrary.simpleMessage("Go to Confirm"),
    "goRealName": MessageLookupByLibrary.simpleMessage("Go to Authentication"),
    "hideNoticeToday": MessageLookupByLibrary.simpleMessage(
      "Don\'t show this again today",
    ),
    "homeViewBalance": MessageLookupByLibrary.simpleMessage(
      "Account Balance (CGB)",
    ),
    "homeViewBuyCoin": MessageLookupByLibrary.simpleMessage("Buy Coin"),
    "homeViewBuyOrders": MessageLookupByLibrary.simpleMessage("Buy Orders"),
    "homeViewLock": MessageLookupByLibrary.simpleMessage("Unavailable (CGB)"),
    "homeViewQuickBuyButton": MessageLookupByLibrary.simpleMessage("Quick Buy"),
    "homeViewQuickBuyContent": MessageLookupByLibrary.simpleMessage(
      "CGpay_Test pegged to CNY at a 1:1 exchange rate",
    ),
    "homeViewQuickBuyTitle": MessageLookupByLibrary.simpleMessage(
      "Trade with CGpay_Test without bank risk control",
    ),
    "homeViewSellCoin": MessageLookupByLibrary.simpleMessage("Sell Coin"),
    "homeViewSellOrders": MessageLookupByLibrary.simpleMessage("Sell Orders"),
    "homeViewSelling": MessageLookupByLibrary.simpleMessage("In Orders (CGB)"),
    "homeViewTransfer": MessageLookupByLibrary.simpleMessage("Transfer"),
    "homeViewUid": MessageLookupByLibrary.simpleMessage("UID"),
    "homeViewWalletAddress": MessageLookupByLibrary.simpleMessage(
      "Wallet Address",
    ),
    "iKnown": MessageLookupByLibrary.simpleMessage("I Understand"),
    "inputAccountHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter your account",
    ),
    "inputCaptchaHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter the verification code",
    ),
    "inputCaptchaSendText": MessageLookupByLibrary.simpleMessage(
      "Get Verification Code",
    ),
    "inputPasswordHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter your password",
    ),
    "inputPhoneCodeHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter the SMS verification code",
    ),
    "inputPhoneHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter your phone number",
    ),
    "inputRePasswordHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter your password again",
    ),
    "inputSendSmsButtonText": MessageLookupByLibrary.simpleMessage(
      "Send Verification Code",
    ),
    "inputSendSmsButtonText2": MessageLookupByLibrary.simpleMessage(
      "Verification Code",
    ),
    "isContinue": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to proceed?",
    ),
    "isOnline": MessageLookupByLibrary.simpleMessage("Online Status"),
    "languageChinese": MessageLookupByLibrary.simpleMessage("中文（简体）"),
    "languageEnglish": MessageLookupByLibrary.simpleMessage("English"),
    "loginViewForgotPassword": MessageLookupByLibrary.simpleMessage(
      "Forgot Password",
    ),
    "loginViewGetBackPassword": MessageLookupByLibrary.simpleMessage("Confirm"),
    "loginViewGoBackLogin": MessageLookupByLibrary.simpleMessage(
      "Back to Log In",
    ),
    "loginViewLogin": MessageLookupByLibrary.simpleMessage("Log In"),
    "loginViewLoginForCode": MessageLookupByLibrary.simpleMessage(
      "Verification Code Login",
    ),
    "loginViewLoginForPassword": MessageLookupByLibrary.simpleMessage(
      "Password Login",
    ),
    "loginViewRegister": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "loginViewRememberAccount": MessageLookupByLibrary.simpleMessage(
      "Remember Account",
    ),
    "loginViewTitleForgotPassword": MessageLookupByLibrary.simpleMessage(
      "Forgot Password",
    ),
    "loginViewTitleLogin": MessageLookupByLibrary.simpleMessage("Log In"),
    "loginViewTitleRegister": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "mineViewAccount": MessageLookupByLibrary.simpleMessage(
      "Account Management",
    ),
    "mineViewFaq": MessageLookupByLibrary.simpleMessage("FAQ"),
    "mineViewFeedback": m1,
    "mineViewPrice": MessageLookupByLibrary.simpleMessage("Rewards!"),
    "mineViewPromotions": MessageLookupByLibrary.simpleMessage("Promotions"),
    "mineViewSafe": MessageLookupByLibrary.simpleMessage("Security Settings"),
    "mineViewSettings": MessageLookupByLibrary.simpleMessage("Settings"),
    "mineViewSystemNotify": MessageLookupByLibrary.simpleMessage(
      "System Announcement",
    ),
    "mineViewTutorialContent": MessageLookupByLibrary.simpleMessage(
      "Easily understand the CGpay_Test trading process",
    ),
    "mineViewTutorialTitle": MessageLookupByLibrary.simpleMessage("Tutorials"),
    "mineViewVersion": MessageLookupByLibrary.simpleMessage(
      "Version Information",
    ),
    "mineViewWalletHistory": MessageLookupByLibrary.simpleMessage(
      "Wallet History",
    ),
    "networkErrorContent": MessageLookupByLibrary.simpleMessage(
      "There was a problem communicating with the server. Don\'t worry, you can try again later or exit the application temporarily.",
    ),
    "networkErrorTitle": MessageLookupByLibrary.simpleMessage(
      "Network Connection Failed",
    ),
    "next": MessageLookupByLibrary.simpleMessage("Next Page"),
    "no": MessageLookupByLibrary.simpleMessage("No"),
    "noStoragePermission": MessageLookupByLibrary.simpleMessage(
      "Please Grant Storage Permissions",
    ),
    "notifyViewMore": MessageLookupByLibrary.simpleMessage("View Details"),
    "notifyViewTitlePersonal": MessageLookupByLibrary.simpleMessage(
      "Personal Notification",
    ),
    "notifyViewTitleSystem": MessageLookupByLibrary.simpleMessage(
      "System Announcement",
    ),
    "offline": MessageLookupByLibrary.simpleMessage("Offline"),
    "online": MessageLookupByLibrary.simpleMessage("Online"),
    "orderNoSplit": MessageLookupByLibrary.simpleMessage("Non-Splittable"),
    "orderSplit": MessageLookupByLibrary.simpleMessage("Splittable"),
    "passwordSignViewConfirm": MessageLookupByLibrary.simpleMessage(
      "Confirm Change",
    ),
    "passwordSignViewNewHintText": MessageLookupByLibrary.simpleMessage(
      "Set an 8-20 digit password with letters, numbers, or symbols",
    ),
    "passwordSignViewRenewHintText": MessageLookupByLibrary.simpleMessage(
      "Confirm Password",
    ),
    "passwordSignViewSecondTitle": MessageLookupByLibrary.simpleMessage(
      "A verification code will be sent to your bound phone number",
    ),
    "passwordSignViewTitle": MessageLookupByLibrary.simpleMessage(
      "Change Login Password",
    ),
    "payViewAmount": MessageLookupByLibrary.simpleMessage("Payment Amount"),
    "payViewBalance": MessageLookupByLibrary.simpleMessage("My Balance"),
    "payViewButtonText": MessageLookupByLibrary.simpleMessage("Pay Now"),
    "payViewCountdownTime": MessageLookupByLibrary.simpleMessage(
      "Remaining Payment Time",
    ),
    "payViewCreateTime": MessageLookupByLibrary.simpleMessage("Creation Time"),
    "payViewEndTime": MessageLookupByLibrary.simpleMessage("End Time"),
    "payViewFailed": MessageLookupByLibrary.simpleMessage(
      "Payment code has expired",
    ),
    "payViewOrderId": MessageLookupByLibrary.simpleMessage("Order ID"),
    "payViewSuccess": MessageLookupByLibrary.simpleMessage(
      "Payment Successful",
    ),
    "payViewSuccessContent": MessageLookupByLibrary.simpleMessage(
      "Please wait for the amount to be credited",
    ),
    "payViewTitle": MessageLookupByLibrary.simpleMessage("Scan to Pay"),
    "personalInfoViewAvatar": MessageLookupByLibrary.simpleMessage(
      "Profile Picture",
    ),
    "personalInfoViewAvatarTitle": MessageLookupByLibrary.simpleMessage(
      "Profile Picture",
    ),
    "personalInfoViewLastLoginIP": MessageLookupByLibrary.simpleMessage(
      "Last Login IP",
    ),
    "personalInfoViewLastLoginTime": MessageLookupByLibrary.simpleMessage(
      "Last Login Time",
    ),
    "personalInfoViewLogout": MessageLookupByLibrary.simpleMessage("Log Out"),
    "personalInfoViewLogoutAlert": MessageLookupByLibrary.simpleMessage(
      "Continuing will log you out of your current account. Proceed?",
    ),
    "personalInfoViewNickName": MessageLookupByLibrary.simpleMessage(
      "Nickname",
    ),
    "personalInfoViewTitle": MessageLookupByLibrary.simpleMessage(
      "Personal Information",
    ),
    "personalInfoViewUID": MessageLookupByLibrary.simpleMessage("UID"),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone Number"),
    "previous": MessageLookupByLibrary.simpleMessage("Previous Page"),
    "promotionInfoViewTitle": MessageLookupByLibrary.simpleMessage(
      "Activity Details",
    ),
    "promotionListViewTitle": MessageLookupByLibrary.simpleMessage(
      "Promotions",
    ),
    "qrcodeViewSave": MessageLookupByLibrary.simpleMessage("Save QR Code"),
    "qrcodeViewTitle": MessageLookupByLibrary.simpleMessage("My QR Code"),
    "realNameAlert": MessageLookupByLibrary.simpleMessage(
      "For your account security, please complete real-name authentication",
    ),
    "realNameViewConfirmID": MessageLookupByLibrary.simpleMessage(
      "Confirm Submission",
    ),
    "realNameViewID": MessageLookupByLibrary.simpleMessage("ID Card Number"),
    "realNameViewIDFailed": MessageLookupByLibrary.simpleMessage(
      "Invalid ID card number, please re-enter",
    ),
    "realNameViewIDHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter your ID card number",
    ),
    "realNameViewName": MessageLookupByLibrary.simpleMessage("Real Name"),
    "realNameViewNameFailed": MessageLookupByLibrary.simpleMessage(
      "Invalid name, please re-enter",
    ),
    "realNameViewNameHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter your real name",
    ),
    "realNameViewNext": MessageLookupByLibrary.simpleMessage("Next"),
    "realNameViewNoticeContent": MessageLookupByLibrary.simpleMessage(
      "1. Your real name and ID card number cannot be modified after submission. Please fill in carefully.\n2. You need to bind your ID card and complete face verification to use CGpay_Test for transactions.",
    ),
    "realNameViewNoticeIDBackContent": MessageLookupByLibrary.simpleMessage(
      "Please upload a clear photo of the back of your ID card without any obstructions.",
    ),
    "realNameViewNoticeIDBackTitle": MessageLookupByLibrary.simpleMessage(
      "* ID Card Back",
    ),
    "realNameViewNoticeIDFrontContent": MessageLookupByLibrary.simpleMessage(
      "Please upload a clear photo of the front of your ID card without any obstructions.",
    ),
    "realNameViewNoticeIDFrontTitle": MessageLookupByLibrary.simpleMessage(
      "* ID Card Front",
    ),
    "realNameViewNoticeTitle": MessageLookupByLibrary.simpleMessage(
      "Important Notice",
    ),
    "realNameViewTitle": MessageLookupByLibrary.simpleMessage(
      "Real-Name Authentication",
    ),
    "realNameViewUploadAgain": MessageLookupByLibrary.simpleMessage(
      "Re-upload",
    ),
    "refreshDone": MessageLookupByLibrary.simpleMessage("Loaded"),
    "refreshLoading": MessageLookupByLibrary.simpleMessage("Pull to Load More"),
    "refreshLoadingDrop": MessageLookupByLibrary.simpleMessage(
      "Release to Load More!",
    ),
    "refreshLoadingFailed": MessageLookupByLibrary.simpleMessage(
      "Failed to Load! Tap to Retry!",
    ),
    "refreshLoadingNoData": MessageLookupByLibrary.simpleMessage(
      "No More Data!",
    ),
    "refreshOnLoading": MessageLookupByLibrary.simpleMessage("Loading..."),
    "reply": MessageLookupByLibrary.simpleMessage("Reply"),
    "reset": MessageLookupByLibrary.simpleMessage("Reset"),
    "restartButton": MessageLookupByLibrary.simpleMessage("Restart"),
    "restartContent": MessageLookupByLibrary.simpleMessage(
      "The app needs to be restarted to apply the update. Restart now?",
    ),
    "restartNoticeContent": MessageLookupByLibrary.simpleMessage(
      "Please click here to restart the app",
    ),
    "restartNoticeTitle": MessageLookupByLibrary.simpleMessage("Restart"),
    "restartTitle": MessageLookupByLibrary.simpleMessage("Update Detected"),
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "save": MessageLookupByLibrary.simpleMessage("Save"),
    "saveImageToGallery": MessageLookupByLibrary.simpleMessage(
      "Save Image to Gallery",
    ),
    "saveImageToGalleryFailed": MessageLookupByLibrary.simpleMessage(
      "Failed to Save Image to Gallery",
    ),
    "saveImageToGallerySuccess": MessageLookupByLibrary.simpleMessage(
      "Image Saved to Gallery Successfully",
    ),
    "scanViewMessage": MessageLookupByLibrary.simpleMessage(
      "No information detected",
    ),
    "scanViewResult": MessageLookupByLibrary.simpleMessage("Scan Result"),
    "scanViewTitle": MessageLookupByLibrary.simpleMessage("Scan"),
    "search": MessageLookupByLibrary.simpleMessage("Search"),
    "securityViewPhone": MessageLookupByLibrary.simpleMessage(
      "Bind Phone Number",
    ),
    "securityViewPhoneAlert": MessageLookupByLibrary.simpleMessage(
      "Please contact the administrator to modify",
    ),
    "securityViewRealName": MessageLookupByLibrary.simpleMessage(
      "Real-Name Authentication",
    ),
    "securityViewRealNameCertificationFailed":
        MessageLookupByLibrary.simpleMessage("Authentication Failed"),
    "securityViewRealNameCertified": MessageLookupByLibrary.simpleMessage(
      "Certified",
    ),
    "securityViewRealNameGoToCertification":
        MessageLookupByLibrary.simpleMessage("Go to Certification"),
    "securityViewSignPassword": MessageLookupByLibrary.simpleMessage(
      "Change Login Password",
    ),
    "securityViewTitle": MessageLookupByLibrary.simpleMessage(
      "Security Settings",
    ),
    "securityViewUserName": MessageLookupByLibrary.simpleMessage("Username"),
    "securityViewWalletPassword": MessageLookupByLibrary.simpleMessage(
      "Change Fund Password",
    ),
    "sellOrderHistoryAll": MessageLookupByLibrary.simpleMessage("All"),
    "sellOrderHistoryAmount": MessageLookupByLibrary.simpleMessage(
      "Selling Amount",
    ),
    "sellOrderHistoryCancel": MessageLookupByLibrary.simpleMessage(
      "Total Cancelled",
    ),
    "sellOrderHistoryDone": MessageLookupByLibrary.simpleMessage("Sold Out"),
    "sellOrderHistoryInfo": MessageLookupByLibrary.simpleMessage("Details"),
    "sellOrderHistoryIng": MessageLookupByLibrary.simpleMessage("In Listing"),
    "sellOrderHistoryNumber": MessageLookupByLibrary.simpleMessage("Quantity"),
    "sellOrderHistoryPayType": MessageLookupByLibrary.simpleMessage(
      "Payment Type",
    ),
    "sellOrderHistorySingle": MessageLookupByLibrary.simpleMessage(
      "Unit Price",
    ),
    "sellOrderHistoryTime": MessageLookupByLibrary.simpleMessage("Time"),
    "sellOrderHistoryTitle": MessageLookupByLibrary.simpleMessage(
      "Sell Orders",
    ),
    "sellOrderHistoryTotalAll": MessageLookupByLibrary.simpleMessage(
      "Total Sales",
    ),
    "sellOrderHistoryTotalCancel": MessageLookupByLibrary.simpleMessage(
      "Total Cancelled",
    ),
    "sellOrderHistoryTotalDone": MessageLookupByLibrary.simpleMessage(
      "Total Sold Out",
    ),
    "sellOrderHistoryTotalIng": MessageLookupByLibrary.simpleMessage("Selling"),
    "sellOrderInfoViewAlreadySell": MessageLookupByLibrary.simpleMessage(
      "Sold/Remaining",
    ),
    "sellOrderInfoViewBuyer": MessageLookupByLibrary.simpleMessage("Buyer"),
    "sellOrderInfoViewBuyerRate": MessageLookupByLibrary.simpleMessage(
      "Buy Order Completion Rate",
    ),
    "sellOrderInfoViewCancelAlertContent": MessageLookupByLibrary.simpleMessage(
      "Continuing will cancel the order",
    ),
    "sellOrderInfoViewCancelAlertTitle": MessageLookupByLibrary.simpleMessage(
      "Cancel Order",
    ),
    "sellOrderInfoViewCancelAll": MessageLookupByLibrary.simpleMessage(
      "Cancel Entire Order",
    ),
    "sellOrderInfoViewChangePayTitle": MessageLookupByLibrary.simpleMessage(
      "Due to transfer risk control, the buyer requests to change the payment account. Do you agree?",
    ),
    "sellOrderInfoViewCollectAccount": MessageLookupByLibrary.simpleMessage(
      "Receiving Account",
    ),
    "sellOrderInfoViewConfirmAlertContent":
        MessageLookupByLibrary.simpleMessage("Confirm to accept the order?"),
    "sellOrderInfoViewConfirmButtonText": MessageLookupByLibrary.simpleMessage(
      "Accept Order",
    ),
    "sellOrderInfoViewCustomerButton": MessageLookupByLibrary.simpleMessage(
      "Payment Not Received",
    ),
    "sellOrderInfoViewCustomerContent": MessageLookupByLibrary.simpleMessage(
      "If payment is not received, you will enter the arbitration support interface. Confirm?",
    ),
    "sellOrderInfoViewCustomerTitle": MessageLookupByLibrary.simpleMessage(
      "Enter Arbitration",
    ),
    "sellOrderInfoViewCustomerViewTitle": MessageLookupByLibrary.simpleMessage(
      "Arbitration Support",
    ),
    "sellOrderInfoViewEmptyRange": MessageLookupByLibrary.simpleMessage(
      "Single Order Amount Range",
    ),
    "sellOrderInfoViewEmptySplit": MessageLookupByLibrary.simpleMessage(
      "Split Order?",
    ),
    "sellOrderInfoViewEmptyTitle": MessageLookupByLibrary.simpleMessage(
      "Listing Information",
    ),
    "sellOrderInfoViewHaveRead": MessageLookupByLibrary.simpleMessage(
      "I Have Read",
    ),
    "sellOrderInfoViewInfoCancelTime": MessageLookupByLibrary.simpleMessage(
      "Cancellation Time",
    ),
    "sellOrderInfoViewInfoConfirmTime": MessageLookupByLibrary.simpleMessage(
      "Confirmation Time",
    ),
    "sellOrderInfoViewInfoCreateTime": MessageLookupByLibrary.simpleMessage(
      "Creation Time",
    ),
    "sellOrderInfoViewInfoID": MessageLookupByLibrary.simpleMessage("Order ID"),
    "sellOrderInfoViewInfoPassTime": MessageLookupByLibrary.simpleMessage(
      "Release Time",
    ),
    "sellOrderInfoViewInfoPayTime": MessageLookupByLibrary.simpleMessage(
      "Payment Time",
    ),
    "sellOrderInfoViewInfoTitle": MessageLookupByLibrary.simpleMessage(
      "Order Information",
    ),
    "sellOrderInfoViewPassAlertCancelText":
        MessageLookupByLibrary.simpleMessage("Delay Release"),
    "sellOrderInfoViewPassAlertConfirmText":
        MessageLookupByLibrary.simpleMessage("Direct Release"),
    "sellOrderInfoViewPassAlertContent1": MessageLookupByLibrary.simpleMessage(
      "[Direct Release] Coins will be directly transferred to the buyer",
    ),
    "sellOrderInfoViewPassAlertTitle": MessageLookupByLibrary.simpleMessage(
      "Release Coins",
    ),
    "sellOrderInfoViewPassButtonText": MessageLookupByLibrary.simpleMessage(
      "Release Coins to Buyer",
    ),
    "sellOrderInfoViewPassDelayAlertContent1": MessageLookupByLibrary.simpleMessage(
      "[Delay Release] Coins will be automatically transferred to the buyer after %s minutes",
    ),
    "sellOrderInfoViewPassDelayAlertContent2":
        MessageLookupByLibrary.simpleMessage(
          "Release coins to the buyer after minutes",
        ),
    "sellOrderInfoViewPassDelayAlertTitle":
        MessageLookupByLibrary.simpleMessage("Delay Release"),
    "sellOrderInfoViewPassDelayButtonText":
        MessageLookupByLibrary.simpleMessage("Delay Release"),
    "sellOrderInfoViewPassHintText": MessageLookupByLibrary.simpleMessage(
      "Do not release coins if you have not received payment!",
    ),
    "sellOrderInfoViewPayerPicture": MessageLookupByLibrary.simpleMessage(
      "Buyer\'s Proof",
    ),
    "sellOrderInfoViewSellAmount": MessageLookupByLibrary.simpleMessage(
      "Selling Quantity",
    ),
    "sellOrderInfoViewTitle": MessageLookupByLibrary.simpleMessage(
      "Sell Order Details",
    ),
    "sellOrderViewAll": MessageLookupByLibrary.simpleMessage("All"),
    "sellOrderViewButtonText": MessageLookupByLibrary.simpleMessage(
      "Place Order",
    ),
    "sellOrderViewCanNotSplit": MessageLookupByLibrary.simpleMessage(
      "Non-Splittable",
    ),
    "sellOrderViewCanSellAmount": MessageLookupByLibrary.simpleMessage(
      "Currently Available",
    ),
    "sellOrderViewCanSplit": MessageLookupByLibrary.simpleMessage("Splittable"),
    "sellOrderViewCollectTitle": MessageLookupByLibrary.simpleMessage(
      "* Payment Methods (Multiple Selections)",
    ),
    "sellOrderViewSellAmount": MessageLookupByLibrary.simpleMessage(
      "* Selling Quantity",
    ),
    "sellOrderViewSellAmountHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter the selling quantity",
    ),
    "sellOrderViewSplitRange": MessageLookupByLibrary.simpleMessage(
      "* Single Order Amount Range",
    ),
    "sellOrderViewSplitTitle": MessageLookupByLibrary.simpleMessage(
      "* Split Order?",
    ),
    "sellOrderViewTitle": MessageLookupByLibrary.simpleMessage("Sell Coins"),
    "send": MessageLookupByLibrary.simpleMessage("Send"),
    "sendCode": MessageLookupByLibrary.simpleMessage("Send Verification Code"),
    "settingErrorContent": MessageLookupByLibrary.simpleMessage(
      "Please check your network settings or try again later.\nError Code: -101",
    ),
    "settingErrorTitle": MessageLookupByLibrary.simpleMessage(
      "Failed to Get Configuration",
    ),
    "settingsViewAudioAlert": MessageLookupByLibrary.simpleMessage(
      "Sound Notification",
    ),
    "settingsViewLanguage": MessageLookupByLibrary.simpleMessage("Language"),
    "settingsViewShock": MessageLookupByLibrary.simpleMessage("Vibration"),
    "settingsViewTheme": MessageLookupByLibrary.simpleMessage("Theme"),
    "settingsViewTitle": MessageLookupByLibrary.simpleMessage("Settings"),
    "themeDark": MessageLookupByLibrary.simpleMessage("Dark Theme"),
    "themeLight": MessageLookupByLibrary.simpleMessage("Light Theme"),
    "themeSystem": MessageLookupByLibrary.simpleMessage("Follow System"),
    "tokenError": MessageLookupByLibrary.simpleMessage(
      "Token has expired, please log in again",
    ),
    "transferHistoryViewMonth": MessageLookupByLibrary.simpleMessage(
      "This Month",
    ),
    "transferHistoryViewTitle": MessageLookupByLibrary.simpleMessage(
      "Transfer History",
    ),
    "transferHistoryViewToday": MessageLookupByLibrary.simpleMessage("Today"),
    "transferViewAddress": MessageLookupByLibrary.simpleMessage(
      "Wallet Address",
    ),
    "transferViewAlertContent": MessageLookupByLibrary.simpleMessage(
      "After successful transfer, it will enter the recipient\'s unavailable balance",
    ),
    "transferViewAmount": MessageLookupByLibrary.simpleMessage(
      "Transfer Quantity",
    ),
    "transferViewAmountHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter the transfer quantity",
    ),
    "transferViewContent": MessageLookupByLibrary.simpleMessage(
      "The transfer will directly enter the recipient\'s account as unavailable balance. Please ensure the account is correct.",
    ),
    "transferViewContentTitle": MessageLookupByLibrary.simpleMessage(
      "Transfer via CGpay_Test",
    ),
    "transferViewHistory": MessageLookupByLibrary.simpleMessage(
      "Transfer History",
    ),
    "transferViewHistoryLater": MessageLookupByLibrary.simpleMessage("Recent"),
    "transferViewNote": MessageLookupByLibrary.simpleMessage("Memo"),
    "transferViewNoteHintText": MessageLookupByLibrary.simpleMessage(
      "You can enter a memo message",
    ),
    "transferViewScan": MessageLookupByLibrary.simpleMessage("「 Scan 」"),
    "transferViewSuss": MessageLookupByLibrary.simpleMessage(
      "Transfer Successful",
    ),
    "transferViewSussHint": MessageLookupByLibrary.simpleMessage(
      "The transfer has been successfully credited to the recipient\'s account",
    ),
    "transferViewTitle": MessageLookupByLibrary.simpleMessage("Transfer"),
    "transferViewWay1": MessageLookupByLibrary.simpleMessage(
      "You can also transfer to the other party via",
    ),
    "transferViewWay2": MessageLookupByLibrary.simpleMessage(""),
    "tryItNow": MessageLookupByLibrary.simpleMessage("Try Now"),
    "unknownViewTitle": MessageLookupByLibrary.simpleMessage("Unknown Page"),
    "verifiedResultViewAgain": MessageLookupByLibrary.simpleMessage(
      "Verify Again",
    ),
    "verifiedResultViewBack": MessageLookupByLibrary.simpleMessage("Back"),
    "verifiedResultViewFailed": MessageLookupByLibrary.simpleMessage(
      "Verification Failed",
    ),
    "verifiedResultViewSuccessful": MessageLookupByLibrary.simpleMessage(
      "Verification Successful",
    ),
    "verifiedResultViewTitle": MessageLookupByLibrary.simpleMessage(
      "Verification Result",
    ),
    "versionViewAlertContent": MessageLookupByLibrary.simpleMessage(
      "Update Content",
    ),
    "versionViewAlertLater": MessageLookupByLibrary.simpleMessage("Later"),
    "versionViewAlertNow": MessageLookupByLibrary.simpleMessage("Update Now"),
    "versionViewAlertTitle": MessageLookupByLibrary.simpleMessage(
      "New Version Available",
    ),
    "versionViewBottom": MessageLookupByLibrary.simpleMessage(
      "Copyright CGpay_Test All rights reserved by CG Game",
    ),
    "versionViewCheck": MessageLookupByLibrary.simpleMessage(
      "Check for Updates",
    ),
    "versionViewSnackContent": MessageLookupByLibrary.simpleMessage(
      "Your app is already the latest version",
    ),
    "versionViewTitle": MessageLookupByLibrary.simpleMessage(
      "Version Information",
    ),
    "versionViewVersion": MessageLookupByLibrary.simpleMessage(
      "Current Version",
    ),
    "videoPlayerLoading": MessageLookupByLibrary.simpleMessage("Loading..."),
    "walletAddViewAccountType": MessageLookupByLibrary.simpleMessage(
      "Account Type",
    ),
    "walletAddViewAddress": MessageLookupByLibrary.simpleMessage(
      "Wallet Address",
    ),
    "walletAddViewAddressHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter the wallet address",
    ),
    "walletAddViewAlipayAccount": MessageLookupByLibrary.simpleMessage(
      "Alipay Account",
    ),
    "walletAddViewAlipayAccountHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter the Alipay account",
    ),
    "walletAddViewBank": MessageLookupByLibrary.simpleMessage(
      "Bank Card Number",
    ),
    "walletAddViewBankHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter the bank card number",
    ),
    "walletAddViewBankName": MessageLookupByLibrary.simpleMessage(
      "Select Bank",
    ),
    "walletAddViewName": MessageLookupByLibrary.simpleMessage("Name"),
    "walletAddViewNameHintText": MessageLookupByLibrary.simpleMessage(
      "Please enter the account holder\'s name",
    ),
    "walletAddViewQrcode": MessageLookupByLibrary.simpleMessage(
      "Payment QR Code",
    ),
    "walletAddViewQrcodeUpload": MessageLookupByLibrary.simpleMessage(
      "Upload Payment QR Code",
    ),
    "walletAddViewTitle": MessageLookupByLibrary.simpleMessage("Add"),
    "walletHistoryViewBalance": MessageLookupByLibrary.simpleMessage(
      "Account Balance (CGB)",
    ),
    "walletHistoryViewLock": MessageLookupByLibrary.simpleMessage(
      "Unavailable (CGB)",
    ),
    "walletHistoryViewMonth": MessageLookupByLibrary.simpleMessage(
      "This Month",
    ),
    "walletHistoryViewSelling": MessageLookupByLibrary.simpleMessage(
      "In Orders (CGB)",
    ),
    "walletHistoryViewTitle": MessageLookupByLibrary.simpleMessage(
      "Wallet History",
    ),
    "walletHistoryViewToday": MessageLookupByLibrary.simpleMessage("Today"),
    "walletHistoryViewTypeSelection": MessageLookupByLibrary.simpleMessage(
      "Select Type",
    ),
    "walletManagerViewAdd": MessageLookupByLibrary.simpleMessage("Add"),
    "walletManagerViewAddAccount": MessageLookupByLibrary.simpleMessage(
      "Account",
    ),
    "walletManagerViewDefault": MessageLookupByLibrary.simpleMessage("Default"),
    "walletManagerViewDefaultAlready": MessageLookupByLibrary.simpleMessage(
      "Already Default",
    ),
    "walletManagerViewDefaultSet": MessageLookupByLibrary.simpleMessage(
      "Set as Default",
    ),
    "walletManagerViewDeleteAlertContent": MessageLookupByLibrary.simpleMessage(
      "Continuing will delete this payment account. Proceed?",
    ),
    "walletManagerViewDeleteAlertTitle": MessageLookupByLibrary.simpleMessage(
      "Delete Account",
    ),
    "walletManagerViewSetDefaultAlertContent": m2,
    "walletManagerViewSetDefaultAlertTitle":
        MessageLookupByLibrary.simpleMessage("Set as Default"),
    "walletManagerViewTitle": MessageLookupByLibrary.simpleMessage(
      "Account Management",
    ),
    "walletPasswordFindPassword": MessageLookupByLibrary.simpleMessage(
      "Forgot Fund Password",
    ),
    "walletPasswordViewConfirm": MessageLookupByLibrary.simpleMessage("Verify"),
    "walletPasswordViewNew": MessageLookupByLibrary.simpleMessage(
      "Set a 6-digit numeric password",
    ),
    "walletPasswordViewOld": MessageLookupByLibrary.simpleMessage(
      "Please enter your original fund password",
    ),
    "walletPasswordViewRenew": MessageLookupByLibrary.simpleMessage(
      "Confirm Password",
    ),
    "walletPasswordViewTitleReset": MessageLookupByLibrary.simpleMessage(
      "Change Fund Password",
    ),
    "walletPasswordViewTitleSet": MessageLookupByLibrary.simpleMessage(
      "Set Fund Password",
    ),
    "webViewTitle": MessageLookupByLibrary.simpleMessage("Browser"),
    "wssErrorContent": MessageLookupByLibrary.simpleMessage(
      "Failed to communicate with the server. Please try again later.\nError Code: -103",
    ),
    "wssErrorTitle": MessageLookupByLibrary.simpleMessage(
      "Communication Connection Error",
    ),
    "yes": MessageLookupByLibrary.simpleMessage("Yes"),
  };
}
