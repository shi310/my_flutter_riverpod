import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../common/common.dart';
import '../../generated/l10n.dart';
import '../../public/public.dart';
import 'provider.dart';

class CustomerFaqListView extends StatelessWidget {
  const CustomerFaqListView({
    super.key,
    required this.arguments,
  });

  final CustomerFaqTypeModel arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builderMyAppBarNormal(context: context,
        title: arguments.categoryName,
      ),
      body: _Body(arguments: arguments),
      backgroundColor: Theme.of(context).myColors.background,
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({
    required this.arguments,
  });

  final CustomerFaqTypeModel arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var customerFaqList = ref.watch(customerFaqListNotifierProvider(arguments: arguments));

    final customerFaqListWidget = switch (customerFaqList) {
      AsyncData(:final value) => _CustomerListWidget(
        customerFaqList: value,
      ),
      AsyncError(:final error) => builderErrorWidget(
        error,
        context: context,
        onRefresh: () {
          customerFaqList = ref.refresh(customerFaqListNotifierProvider(arguments: arguments));
        },
      ),
      _ => _Loading(),
    };

    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: customerFaqListWidget,
    );
  }
}

class _CustomerListWidget extends StatelessWidget {
  const _CustomerListWidget({
    required this.customerFaqList,
  });

  final CustomerFaqListModel customerFaqList;

  @override
  Widget build(BuildContext context) {
    List<CustomerFaqInfoModel> list = [];

    if (customerFaqList.list != null) {
      list = customerFaqList.list!;
    }

    if (list.isEmpty) {
      return builderEmptyDataWidget(
        context: context,
      );
    }

    // 常见问题点击事件
    void onClickFaqItemClick(CustomerFaqInfoModel model) {
      context.pushNamed(MyRouters.customerFaqInfoView.name, extra: model);
    }

    final hot = Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(Theme.of(context).myIcons.helpHot, height: 16, width: 50, fit: BoxFit.fill),
        SizedBox(
          width: 50,
          height: 16,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: FittedBox(child: Text(S.of(context).faqHot, style: TextStyle(
                color: Theme.of(context).myColors.cardBackground,
                fontSize: MyFontSize.body.value,
              ))),
            ),
          ),
        ),
      ],
    );

    final body = Column(children: list.asMap().entries.map((element) {
      final card = MyCard(
        color: Theme.of(context).myColors.primary.withValues(alpha: 0.05),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(child: Row(children: [
            MyCard(
              width: 18,
              height: 18,
              borderRadius: BorderRadius.circular(18),
              color: Theme.of(context).myColors.primary,
              child: Center(child: FittedBox(child: Text(element.value.sort.toString(), style: TextStyle(
                color: Theme.of(context).myColors.cardBackground,
              )))),
            ),
            const SizedBox(width: 10),
            Flexible(child: Text(element.value.title ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Theme.of(context).myColors.primary,
              ),
            )),
            const SizedBox(width: 10),
            if (element.value.symbol == 1) hot,
            const SizedBox(width: 10),
          ])),
          SvgPicture.asset(Theme.of(context).myIcons.right, colorFilter: ColorFilter.mode(Theme.of(context).myColors.iconGrey, BlendMode.srcIn)),
        ]),
      );

      return Padding(padding: EdgeInsets.only(bottom: element.key == list.length - 1 ? 0 : 8) , child: MyButton(
        onPressed: () => onClickFaqItemClick(element.value),
        borderRadius: BorderRadius.circular(8),
        child: card,
      ));
    }).toList());

    return MyCard(
      color: Theme.of(context).myColors.cardBackground,
      borderRadius: BorderRadius.circular(10),
      padding: EdgeInsets.all(16),
      child: body,
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return MyCard(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).myColors.cardBackground,
      padding: EdgeInsets.all(16),
      child: Column(children: List.generate(10, (index) => MyCard(
        borderRadius: BorderRadius.circular(10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: index == 9 ? null : const EdgeInsets.only(bottom: 8),
        color: Theme.of(context).myColors.primary.withValues(alpha: 0.05),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          builderLoading(
            context: context,
            width: 18,
            height: 18,
            radius: 18,
          ),
          const SizedBox(width: 10),
          Expanded(child: builderLoading(
            context: context,
            width: double.infinity,
            height: 16,
            radius: 4,
          )),
        ]),
      ))),
    );
  }
}
