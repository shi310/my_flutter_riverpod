part of '../view.dart';

// 表情分页展示
class _EmojiGrid extends StatelessWidget {
  const _EmojiGrid({
    required this.onPressed,
    required this.emoticons,
  });

  final void Function(String emoji) onPressed;
  final List<String> emoticons;

  @override
  Widget build(BuildContext context) {
    final pageCount = (emoticons.length / 40).ceil();

    return PageView.builder(
      scrollDirection: Axis.vertical,
      pageSnapping: false,
      itemCount: pageCount,
      itemBuilder: (context, pageIndex) {
        final pageItems = emoticons.skip(pageIndex * 40).take(40).toList();
        return GridView.builder(
          addAutomaticKeepAlives: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: pageItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            childAspectRatio: 1,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
          ),
          itemBuilder: (context, index) {
            final e = pageItems[index];
            return IconButton(
              // borderRadius: BorderRadius.circular(8),
              onPressed: () => onPressed(e),
              icon: Text(e, style: TextStyle(
                fontSize: MyFontSize.headline.value,
              )),
            );
          },
        );
      },
    );
  }
}