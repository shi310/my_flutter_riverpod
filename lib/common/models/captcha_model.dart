class CaptchaModel {
  CaptchaModel({
    required this.captchaId,
    required this.picPath,
    required this.captchaLength,
    required this.openCaptcha,
  });

  String captchaId;
  String picPath;
  int captchaLength;
  bool openCaptcha;

  factory CaptchaModel.fromJson(Map<String, dynamic> json) => CaptchaModel(
    captchaId: json["captchaId"] ?? '',
    picPath: json["picPath"] ?? '',
    captchaLength: json["captchaLength"] ?? -1,
    openCaptcha: json["openCaptcha"] ?? false,
  );

  Map<String, dynamic> toJson() => {
    "captchaId": captchaId,
    "picPath": picPath,
    "captchaLength": captchaLength,
    "openCaptcha": openCaptcha,
  };

  factory CaptchaModel.empty() => CaptchaModel(
    captchaId: '',
    picPath: '',
    captchaLength: -1,
    openCaptcha: false,
  );
}

class CaptchaKeyModel {
  CaptchaKeyModel({
    required this.captchaId,
    required this.type,
  });

  String captchaId;
  int type;

  factory CaptchaKeyModel.fromJson(Map<String, dynamic> json) => CaptchaKeyModel(
    captchaId: json["captchaId"] ?? '',
    type: json["type"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "captchaId": captchaId,
    "type": type,
  };

  factory CaptchaKeyModel.empty() => CaptchaKeyModel(
    captchaId: '',
    type: 0,
  );
}
