part of '../view.dart';
class _VideoBox extends StatefulWidget {
  final String? url;
  final String? path;

  const _VideoBox({
    required this.url,
    required this.path,
  });

  @override
  State<_VideoBox> createState() => _VideoBoxState();
}

class _VideoBoxState extends State<_VideoBox> {
  Future<Uint8List?>? _thumbFuture;

  @override
  void initState() {
    super.initState();
    if (widget.url != null || widget.path != null) {
      _thumbFuture = VideoThumbnail.thumbnailData(
        video: widget.path ?? widget.url!,
        imageFormat: ImageFormat.JPEG,
        maxWidth: 800,
        quality: 30,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.path == null && widget.url == null) {
      return Container(color: Colors.black);
    }

    return FutureBuilder<Uint8List?>(
      future: _thumbFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return builderLoading(context: context);
        }

        final uint8list = snapshot.data;
        return Stack(
          children: [
            Positioned.fill(
              child: uint8list != null
                  ? Image.memory(uint8list, fit: BoxFit.cover)
                  : Container(color: Colors.black),
            ),
            Positioned.fill(
              child: Center(
                child: MyButton(
                  borderRadius: BorderRadius.circular(100),
                  onPressed: () {
                    context.pushNamed(MyRouters.openVideo.name,
                      extra: OpenVideoViewArguments(url: widget.url, path: widget.path),
                    );
                  },
                  child: MyCard(
                    width: 50,
                    height: 50,
                    color: Colors.black.withAlpha(100),
                    child: Center(child: FittedBox(child: const Icon(Icons.play_arrow, color: Colors.white, size: 40))),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}