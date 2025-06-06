part of '../view.dart';
class _ImageBox extends StatelessWidget {
  final String? url;
  final String? path;

  const _ImageBox({
    required this.url,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (path == null && url == null) {
      child = Container(
        color: Colors.black,
      );
    } else if (path != null) {
      child = Image.file( File(path!), fit: BoxFit.cover);
    } else {
      child = MyImage(imageUrl: url ?? '', fit: BoxFit.cover);
    }

    return MyButton(
      debounceDuration: Duration.zero,
      onPressed: () {
        context.pushNamed(MyRouters.openImage.name,
          extra: OpenImageViewArguments(url: url, path: path),
        );
      },
      child: child,
    );
  }
}