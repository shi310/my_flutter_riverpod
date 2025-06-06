part of '../view.dart';
// 对话气泡框架
class _CustomerChatViewMessageBox extends StatelessWidget {
  const _CustomerChatViewMessageBox({
    required this.alignType,
    required this.child,
    required this.avatar,
    required this.createTime,
  });

  final QichatAlignType alignType;
  final Widget child;
  final Widget avatar;
  final String createTime;

  @override
  Widget build(BuildContext context) {
    final avatarBox = MyCard(
      width: 40,
      height: 40,
      borderRadius: BorderRadius.circular(36),
      child: avatar,
    );
    return Align(
      alignment: alignType == QichatAlignType.left ? Alignment.centerLeft : Alignment.centerRight,
      child: MyCard(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 32 - 4 - 8),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Opacity(opacity: alignType == QichatAlignType.left ? 1 : 0, child: avatarBox),
          Opacity(opacity: alignType == QichatAlignType.left ? 1 : 0, child: SizedBox(width: 6)),

          Flexible(child: Column(crossAxisAlignment: alignType == QichatAlignType.left ? CrossAxisAlignment.start : CrossAxisAlignment.end, children: [
            Text(createTime, style: TextStyle(
              fontSize: MyFontSize.bodySmall.value,
            )),
            const SizedBox(height: 4),
            child,
          ])),

          Opacity(opacity: alignType == QichatAlignType.left ? 0 : 1, child: SizedBox(width: 6)),
          Opacity(opacity: alignType == QichatAlignType.left ? 0 : 1, child: avatarBox),
        ]),
      ),
    );
  }
}
