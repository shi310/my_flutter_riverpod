part of '../view.dart';

/// 聊天底部
class _ChatBottom extends StatelessWidget {
  final CustomerChatViewArguments arguments;
  const _ChatBottom({
    required this.arguments,
  });

  @override Widget build(BuildContext context) {
    // 输入框
    final input = _Input();

    // 表情选择容器
    final emoticonsContainer = _EmoticonsContainer();

    return MyCard(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      color: Theme.of(context).myColors.itemCardBackground,
      child: SafeArea(child: Column(children: [
        input,
        const SizedBox(height: 2),
        Row(children: [
          // 表情 / 文字键盘
          _ButtonEmoticons(),
          // 相册
          _ButtonAlbum(),
          // 相机
          _ButtonCamera(),
          // 视频
          _ButtonVideo(),
          // 间距
          const Spacer(),
          // 发送
          _ButtonSend(arguments: arguments),
        ]),
        const SizedBox(height: 2),
        emoticonsContainer,
      ]
      )),
    );
  }
}