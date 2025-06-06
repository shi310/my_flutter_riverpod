part of '../view.dart';

class _CustomerChatViewMessageBoxChild extends StatelessWidget {
  const _CustomerChatViewMessageBoxChild({
    required this.message,
    this.reply,
  });

  final QiChatMessageModel message;
  final QiChatMessageModel? reply;

  @override
  Widget build(BuildContext context) {
    if (message.completer == null) {
      return _MessageBox(
        alignType: message.alignType,
        opacity: 0,
        messageFormat: message.messageFormat,
        content: message.content,
        url: message.url,
        path: message.path,
        reply: reply,
        hasError: false,
        msgId: message.msgId,
      );
    }

    return FutureBuilder<Int64>(
      key: ValueKey(message.completer),
      future: message.completer?.future,
      builder: (context, snapshot) {
        final isLoading = snapshot.connectionState == ConnectionState.waiting;

        return _MessageBox(
          hasError: snapshot.hasError,
          alignType: message.alignType,
          opacity: isLoading || snapshot.hasError ? 1.0 : 0.0,
          messageFormat: message.messageFormat,
          content: message.content,
          url: message.url,
          path: message.path,
          reply: reply,
          msgId: message.msgId,
        );
      },
    );
  }
}

class _MessageBox extends ConsumerStatefulWidget {
  const _MessageBox({
    required this.messageFormat,
    this.url,
    this.path,
    this.content,
    required this.alignType,
    required this.opacity,
    required this.hasError,
    required this.msgId,
    this.reply,
  });

  final MessageFormat messageFormat;
  final String? url;
  final String? path;
  final String? content;
  final QichatAlignType alignType;
  final double opacity;
  final bool hasError;
  final QiChatMessageModel? reply;
  final Int64 msgId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState()   => _MessageBoxState();
}

class _MessageBoxState extends ConsumerState<_MessageBox> {
  OverlayEntry? _overlayEntry;

  void _showOverlay() {
    _removeOverlay();

    if (widget.msgId == Int64.ZERO) return;

    final renderBox = context.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final offset = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;
    final screenHeight = MediaQuery.of(context).size.height;
    final keyboardHeight = MediaQueryData.fromView(View.of(context)).viewInsets.bottom;
    final topHeight = MediaQueryData.fromView(View.of(context)).padding.top;

    final bottomSpace = screenHeight - offset.dy - size.height - 90 - keyboardHeight;
    final topSpace = offset.dy - topHeight - kToolbarHeight;

    double top = topSpace > 100
        ? offset.dy - 100
        : bottomSpace > 84
            ? offset.dy + size.height + 4
            : screenHeight / 4;

    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: _removeOverlay,
              ),
            ),

            Positioned(
              left: widget.alignType == QichatAlignType.left ? offset.dx : null,
              right: widget.alignType == QichatAlignType.right ? (offset.dx - 12) : null,
              top: top,
              child: Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                shadowColor: Colors.black38,
                child: Row(children: [
                  _ButtonPop(
                    icon: Icons.copy,
                    title: S.of(context).copy,
                    onPressed: () {
                      _removeOverlay();
                      final text = widget.content ?? widget.url ?? widget.path;
                      text?.copyToClipBoard();
                      MyAlert.showSnack(child: Text(S.of(context).copySuccess));
                    },
                  ),
                  _ButtonPop(
                    icon: Icons.reply,
                    title: S.of(context).reply,
                    onPressed: () {
                      _removeOverlay();
                      final value = ref.read(customerChatViewQichatMessageNotifierProvider.notifier).getMessageById(widget.msgId);
                      ref.read(customerChatViewReplyMessageNotifierProvider.notifier).update(value);
                    },
                  ),
                ]),
              ),
            ),
          ],
        );
      },
    );

    Overlay.of(context, rootOverlay: true).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.messageFormat == MessageFormat.MSG_VIDEO || widget.messageFormat == MessageFormat.MSG_IMG) {
      if (widget.url == null && widget.path == null) {
        throw ('当前为媒体消息，url 和 path 和 content 不能同时为空');
      }
    } else {
      if (widget.content == null) {
        throw ('文本消息不能同时为空');
      }
    }

    final loading = Container(
      padding: EdgeInsets.only(right: 4),
      width: 20,
      height: 20,
      child: Opacity(
        opacity: widget.opacity,
        child: widget.hasError ? const Icon(Icons.error, color: Colors.red, size: 20) : FittedBox(child: CupertinoActivityIndicator()),
      ),
    );

    Widget child = GestureDetector(
      onLongPress: _showOverlay,
      child: _ContentBox(
        height: [MessageFormat.MSG_VIDEO, MessageFormat.MSG_IMG].contains(widget.messageFormat)
            ? (MediaQuery.of(context).size.width - 80 - 32 - 8) * 5 / 6
            : null,
        messageFormat: widget.messageFormat,
        padding: widget.messageFormat == MessageFormat.MSG_TEXT ? EdgeInsets.symmetric(horizontal: 16, vertical: 10) : null,
        alignType: widget.alignType,
        child: widget.messageFormat == MessageFormat.MSG_VIDEO
            ? widget.url != null
                ? _VideoBox(url: widget.url, path: null)
                : _VideoBox(url: null, path: widget.path)
            : widget.messageFormat == MessageFormat.MSG_IMG
                ? widget.url != null
                    ? _ImageBox(url: widget.url, path: null)
                    : _ImageBox(url: null, path: widget.path)
                : Text(widget.content!,
                    style: TextStyle(
                      color:
                          widget.alignType == QichatAlignType.left ? Theme.of(context).myColors.onBackground : Theme.of(context).myColors.onPrimary,
                      fontSize: 14,
                    )),
      ),
    );

    if (widget.reply != null && widget.reply!.msgId != Int64(0)) {
      child = Column(crossAxisAlignment: widget.alignType == QichatAlignType.left ? CrossAxisAlignment.start : CrossAxisAlignment.end, children: [
        child,
        const SizedBox(height: 4),
        _ContentBox(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          messageFormat: widget.reply!.messageFormat,
          alignType: widget.alignType,
          color: Theme.of(context).myColors.buttonDisable,
          child: Row(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('${S.of(context).reply} : '),
            widget.reply!.messageFormat == MessageFormat.MSG_VIDEO
                ? SizedBox(
                    width: 24,
                    height: 24,
                    child: _VideoBox(url: widget.reply!.url, path: widget.reply!.path),
                  )
                : widget.reply!.messageFormat == MessageFormat.MSG_IMG
                    ? SizedBox(
                        width: 24,
                        height: 24,
                        child: _ImageBox(url: widget.reply!.url, path: widget.reply!.path),
                      )
                    : Flexible(child: Text('${widget.reply!.content}', maxLines: 5, overflow: TextOverflow.ellipsis))
          ]),
        )
      ]);
    }

    return Row(mainAxisAlignment: widget.alignType == QichatAlignType.left ? MainAxisAlignment.start : MainAxisAlignment.end, children: [
      if (widget.alignType == QichatAlignType.right) loading,
      if (widget.alignType == QichatAlignType.right) const SizedBox(width: 4),
      Flexible(child: child),
      if (widget.alignType == QichatAlignType.left) const SizedBox(width: 4),
      if (widget.alignType == QichatAlignType.left) loading,
    ]);
  }
}

class _ContentBox extends StatelessWidget {
  const _ContentBox({
    required this.messageFormat,
    required this.alignType,
    required this.child,
    this.color,
    this.height,
    this.padding,
  });

  final MessageFormat messageFormat;
  final QichatAlignType alignType;
  final Widget child;
  final Color? color;
  final double? height;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    Color? color = this.color;

    if (color == null) {
      if (messageFormat == MessageFormat.MSG_VIDEO || messageFormat == MessageFormat.MSG_IMG) {
        color = Theme.of(context).myColors.black;
      } else {
        color = alignType == QichatAlignType.left ? Theme.of(context).myColors.itemCardBackground : Theme.of(context).myColors.primary;
      }
    }

    return MyCard(
      padding: padding,
      color: color,
      borderRadius: BorderRadius.only(
        topLeft: alignType == QichatAlignType.left ? Radius.zero : Radius.circular(10),
        topRight: alignType == QichatAlignType.left ? Radius.circular(10) : Radius.zero,
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      height: height,
      child: child,
    );
  }
}

class _ButtonPop extends StatelessWidget {
  const _ButtonPop({
    required this.onPressed,
    required this.icon,
    required this.title,
  });

  final VoidCallback? onPressed;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return MyButton(
      onPressed: onPressed,
      child: MyCard(
        height: 80,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20, height: 20, child: Icon(icon, color: Theme.of(context).myColors.white)),
            const SizedBox(height: 8),
            Text(title,
              style: TextStyle(
                color: Theme.of(context).myColors.white,
                fontSize: MyFontSize.body.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}