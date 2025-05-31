part of '../view.dart';

// 常见问题
class _CustomerChatMessageBoxQA extends StatefulWidget {
  const _CustomerChatMessageBoxQA({
    required this.autoReplyItem,
    required this.itemPressed,
  });

  final AutoReplyItemModel autoReplyItem;
  final void Function(String, Qa)? itemPressed;

  @override
  State<_CustomerChatMessageBoxQA> createState() => _CustomerChatMessageBoxQAState();
}

class _CustomerChatMessageBoxQAState extends State<_CustomerChatMessageBoxQA> {
  // 第一位：FAQ 对应的下标
  // 第二位：是否展开 0:不展开 1:展开
  List<int> itemIndex = [0, 0];

  List<Qa> data = [];

  @override
  void initState() {
    super.initState();
    data = widget.autoReplyItem.qa ?? [];
  }

  @override
  Widget build(BuildContext context) {
    final qa = Column(
      children: data.asMap().entries.map((e) {
        final title = MyButton(
          borderRadius: BorderRadius.circular(8),
          debounceDuration: Duration.zero,
          onPressed: () {
            setState(() {
              if (itemIndex[0] == e.key) {
                if (itemIndex[1] == 0) {
                  itemIndex[1] = 1;
                } else {
                  itemIndex[0] = -1;
                  itemIndex[1] = 0;
                }
              } else {
                itemIndex[0] = e.key;
                itemIndex[1] = 1;
              }
            });

            if (e.value.related != null && e.value.related!.isEmpty) {
              widget.itemPressed?.call('${e.value.question?.content?.data}',e.value);
            }
          },
          child: SizedBox(
            height: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Text('${e.key + 1}. ${e.value.question?.content?.data}',
                    style: TextStyle(
                      color: Theme.of(context).myColors.primary,
                      fontSize: MyFontSize.body.value,
                    )
                )),
                if (e.value.related != null && e.value.related!.isNotEmpty)
                  const SizedBox(width: 10),
                if (e.value.related != null && e.value.related!.isNotEmpty)
                  Icon(
                    itemIndex[0] == e.key && itemIndex[1] == 1 ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    color: Theme.of(context).myColors.primary,
                    size: 20,
                  ),

              ],
            ),
          ),
        );

        List<Qa> related = e.value.related ?? <Qa>[];

        final content = itemIndex[0] == e.key && itemIndex[1] == 1 && e.value.related != null && e.value.related!.isNotEmpty
          ? MyCard(
            color: Theme.of(context).myColors.cardBackground,
            borderRadius: BorderRadius.circular(8),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: related.asMap().entries.map((e) => MyButton(
              debounceDuration: Duration.zero,
              borderRadius: BorderRadius.circular(8),
              onPressed: () {
                widget.itemPressed?.call('${e.value.question?.content?.data}', e.value);
              },
              child: Text('${e.key + 1}. ${e.value.question?.content?.data}',
                style: TextStyle(
                  height: 2,
                ),
              ),
            )).toList()),
          )
          : const SizedBox();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [title, const SizedBox(height: 4), content],
        );
      }).toList(),
    );

    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Flexible(child: MyCard(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        color: Theme.of(context).myColors.itemCardBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.zero,
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: Column(children: [
          Text('${widget.autoReplyItem.title}'),
          const SizedBox(height: 8),
          qa,
        ]),
      )),
      const SizedBox(width: 4),
      Opacity(opacity: 0, child: CupertinoActivityIndicator()),
    ]);

  }
}