import 'package:my_flutter_basic/common/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'alive_code.g.dart';

@Riverpod(keepAlive: true)
class AliveCodeNotifier extends _$AliveCodeNotifier {
  @override
  Future<CaptchaModel> build() async {
    CaptchaModel data = CaptchaModel();
    await GlobalController.to.myDio?.get<CaptchaModel>(ApiPath.base.captcha,
      onSuccess: (code, msg, results) async {
        data = results;
      },
      onError: (e) async {},
      onModel: (m) => CaptchaModel.fromJson(m),
    );
    return data;
  }

  void updateCaptcha() {
    final newCaptcha = CaptchaModel(
      picPath: '12313132',
    );
    state = AsyncValue.data(newCaptcha);
  }
}