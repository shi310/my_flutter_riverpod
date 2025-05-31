part of '../view.dart';

class _CustomerChatViewMessageBoxChild extends StatelessWidget {
  const _CustomerChatViewMessageBoxChild({
    required this.messageFormat,
    this.completer,
    this.url,
    this.path,
    this.content,
    required this.alignType,
  });

  final MessageFormat messageFormat;
  final Completer<Int64>? completer;
  final String? url;
  final String? path;
  final String? content;
  final QichatAlignType alignType;

  @override
  Widget build(BuildContext context) {
    if (completer == null) {
      return _MessageBox(
        alignType: alignType,
        opacity: 0,
        messageFormat: messageFormat,
        content: content,
        url: url,
        path: path,
        hasError: false,
      );
    }

    return FutureBuilder<Int64>(
      key: ValueKey(completer),
      future: completer?.future,
      builder: (context, snapshot) {
        final isLoading = snapshot.connectionState == ConnectionState.waiting;

        return _MessageBox(
          hasError: snapshot.hasError,
          alignType: alignType,
          opacity: isLoading || snapshot.hasError ? 1.0 : 0.0,
          messageFormat: messageFormat,
          content: content,
          url: url,
          path: path,
        );
      },
    );
  }
}

class _MessageBox extends StatelessWidget {
  const _MessageBox({
    required this.messageFormat,
    this.url,
    this.path,
    this.content,
    required this.alignType,
    required this.opacity,
    required this.hasError,
  });

  final MessageFormat messageFormat;
  final String? url;
  final String? path;
  final String? content;
  final QichatAlignType alignType;
  final double opacity;
  final bool hasError;

  @override
  Widget build(BuildContext context) {
    if (messageFormat == MessageFormat.MSG_VIDEO || messageFormat == MessageFormat.MSG_IMG) {
      if (url == null && path == null) {
        throw('当前为媒体消息，url 和 path 和 content 不能同时为空');
      }
    } else {
      if (content == null) {
        throw('文本消息不能同时为空');
      }
    }
    final icon = Container(
      padding: EdgeInsets.only(right: 4),
      width: 20,
      height: 20,
      child: Opacity(opacity: opacity, child: hasError ? const Icon(Icons.error, color: Colors.red, size: 20,) : FittedBox(child: CupertinoActivityIndicator())),
    );

    return Row(mainAxisAlignment: alignType == QichatAlignType.left ? MainAxisAlignment.start : MainAxisAlignment.end, children: [
      if (alignType == QichatAlignType.right)
        icon,
      if (alignType == QichatAlignType.right)
        const SizedBox(width: 4),
      Flexible(child: MyCard(
        width: messageFormat == MessageFormat.MSG_TEXT ? null : double.infinity,
        padding: messageFormat == MessageFormat.MSG_TEXT ? EdgeInsets.symmetric(horizontal: 16, vertical: 10) : null,
        color: alignType == QichatAlignType.left ? Theme.of(context).myColors.itemCardBackground : Theme.of(context).myColors.primary,
        borderRadius: BorderRadius.only(
          topLeft: alignType == QichatAlignType.left ? Radius.zero : Radius.circular(10),
          topRight: alignType == QichatAlignType.left ? Radius.circular(10) : Radius.zero,
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        height: [MessageFormat.MSG_VIDEO, MessageFormat.MSG_IMG].contains(messageFormat) ? (MediaQuery.of(context).size.width - 32 - 4 - 8) * 3 / 4 : null,
        child: messageFormat == MessageFormat.MSG_VIDEO
            ? url != null
            ? builderMediaNetworkBox(mediaType: MediaType.video, url: url!)
            : builderMediaFileBox(mediaType: MediaType.video, path: path!)
            : messageFormat == MessageFormat.MSG_IMG
            ? url != null
            ? builderMediaNetworkBox(mediaType: MediaType.image, url: url!)
            : builderMediaFileBox(mediaType: MediaType.image, path: path!)
            : Text(content!, style: TextStyle(
          color: alignType == QichatAlignType.left ? Theme.of(context).myColors.onBackground : Theme.of(context).myColors.onPrimary,
          fontSize: 14,
        )),
      )),
      if (alignType == QichatAlignType.left)
        const SizedBox(width: 4),
      if (alignType == QichatAlignType.left)
        icon,
    ]);
  }
}
