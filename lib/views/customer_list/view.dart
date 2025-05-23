import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../common/common.dart';
import '../../generated/l10n.dart';
import '../../public/public.dart';
import 'provider.dart';

class CustomerListView extends StatelessWidget {
  const CustomerListView({
    super.key,
    required this.arguments,
  });

  final CustomerListViewArguments arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builderMyAppBarNormal(
        context: context,
        title: arguments.customerType == CustomerType.guest
          ? S.of(context).customerViewTitleGuest
          : S.of(context).customerViewTitleUser,
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

  final CustomerListViewArguments arguments;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var customerList = ref.watch(customerListNotifierProvider(arguments: arguments));
    var customerFaqTypeList = ref.watch(customerFaqTypeListNotifierProvider);

    if (customerList is AsyncLoading || customerFaqTypeList is AsyncLoading) {
      return _Loading();
    }

    if (customerList is AsyncError || customerFaqTypeList is AsyncError) {
      return builderErrorWidget(customerList.asError?.error ?? customerFaqTypeList.asError?.error ?? '未知错误',
        context: context,
        onRefresh: () {
          customerList =ref.refresh(customerListNotifierProvider(arguments: arguments));
          customerFaqTypeList = ref.refresh(customerFaqTypeListNotifierProvider);
        },
      );
    }

    final customerData = customerList.requireValue;
    final faqTypeData = customerFaqTypeList.requireValue;

    if (customerData.customer == null && faqTypeData.list == null) {
      return builderEmptyDataWidget(
        context: context,
      );
    }

    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(16, 10, 16, 16),
      child: Column(
        children: [
          _CustomerListWidget(customerData: customerData),
          const SizedBox(height: 10),
          if (arguments.customerType == CustomerType.guest)
            _CustomerFaqTypeListWidget(customerFaqTypeListModel: faqTypeData),
        ],
      ),
    );
  }
}

class _CustomerFaqTypeListWidget extends StatelessWidget {
  final CustomerFaqTypeListModel customerFaqTypeListModel;

  const _CustomerFaqTypeListWidget({
    required this.customerFaqTypeListModel,
  });
  
  @override
  Widget build(BuildContext context) {
    List<CustomerFaqTypeModel> list = [];

    if (customerFaqTypeListModel.list != null) {
      list = customerFaqTypeListModel.list!;
    }

    // 常见问题点击事件
    void onClickFaqItem(CustomerFaqTypeModel model) {
      context.pushNamed(MyRouters.customerFaqListView.name, extra: model);
    }

    return Row(children: [
      const SizedBox(width: 50 + 10),
      Expanded(child: Column(children: [
        MyCard(
          width: double.infinity,
          color: Theme.of(context).myColors.cardBackground,
          borderRadius: BorderRadius.circular(10),
          padding: EdgeInsets.all(16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(S.of(context).customerViewTitleFaq, style: TextStyle(
                fontSize: MyFontSize.bodyLarge.value,
                color: Theme.of(context).myColors.primary,
                fontWeight: FontWeight.w600
            )),

            Column(children: list.asMap().entries.map((element) {
              final card = MyCard(
                color: Theme.of(context).myColors.primary.withValues(alpha: 0.05),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  MyCard(
                    width: 18,
                    height: 18,
                    borderRadius: BorderRadius.circular(18),
                    color: Theme.of(context).myColors.primary,
                    child: Center(child: FittedBox(child: Text(element.value.sort.toString(), style: TextStyle(
                      color: Theme.of(context).myColors.onPrimary,
                    )))),
                  ),
                  const SizedBox(width: 10),
                  Expanded(child: Align(alignment: Alignment.centerLeft, child: FittedBox(child: Text(element.value.categoryName ?? '', style: TextStyle(
                      color: Theme.of(context).myColors.primary
                  ))))),
                  const SizedBox(width: 10),
                  SvgPicture.asset(Theme.of(context).myIcons.right, colorFilter: ColorFilter.mode(Theme.of(context).myColors.iconGrey, BlendMode.srcIn)),
                ]),
              );

              return Padding(padding: EdgeInsets.only(top: element.key == 0 ? 16 : 8) , child: MyButton(
                onPressed: () => onClickFaqItem(element.value),
                borderRadius: BorderRadius.circular(8),
                child: card,
              ));
            }).toList())
          ]),
        ),
      ])),
    ]);
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(padding: EdgeInsets.fromLTRB(16, 10, 16, 16), child: Column(children: [
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        MyCard(
          width: 50,
          height: 50,
          color: Theme.of(context).myColors.cardBackground,
          borderRadius: BorderRadius.circular(50),
          padding: EdgeInsets.all(6),
          child: builderLoading(
            context: context,
            width: 40,
            height: 40,
            radius: 20,
          ),
        ),

        const SizedBox(width: 10),

        Expanded(child: MyCard(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).myColors.cardBackground,
          padding: EdgeInsets.all(16),
          child: Column(children: List.generate(10, (index) => MyCard(
            margin: index == 9 ? null : const EdgeInsets.only(bottom: 10),
            child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              builderLoading(
                context: context,
                width: 32,
                height: 32,
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
        )),
      ]),
    ]));
  }
}

class _CustomerListWidget extends StatelessWidget {
  const _CustomerListWidget({
    required this.customerData,
  });

  final CustomerModel customerData;

  @override
  Widget build(BuildContext context) {
    List<Customer> list = [];

    if (customerData.customer != null) {
      list = customerData.customer!;
    }

    // 客服列表点击事件
    void onClickCustomerItem(Customer model) async {
      final arguments = CustomerChatViewArguments(
        cert: model.cret,
        apiUrl: customerData.urlApi,
        imageUrl: customerData.urlImg,
        sign: customerData.sign,
        tenantId: customerData.chatUrl?.toInt() ?? 0,
        userId: customerData.chatId,
      );

      context.pushNamed(MyRouters.customerChatView.name, extra: arguments);
    }

    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MyCard(
        width: 50,
        height: 50,
        color: Theme.of(context).myColors.cardBackground,
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(Theme.of(context).myIcons.customerAvatar),
      ),

      const SizedBox(width: 10),

      Expanded(
        child: MyCard(
          color: Theme.of(context).myColors.cardBackground,
          borderRadius: BorderRadius.circular(10),
          padding: EdgeInsets.all(16),
          child: Column(children: list.asMap().entries.map((element) {
            final card = Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              MyCard(
                width: 32,
                height: 32,
                borderRadius: BorderRadius.circular(18),
                child: MyImage(imageUrl: element.value.customerServiceAvatar, width: 32, height: 32),
              ),
              const SizedBox(width: 10),
              Text(element.value.remark),
            ]);

            return Padding(padding: EdgeInsets.only(bottom: element.key == 0 ? 0 : 8) , child: MyButton(
              borderRadius: BorderRadius.circular(30),
              onPressed: () => onClickCustomerItem(element.value),
              child: card,
            ));
          }).toList()),
        ),
      ),
    ]);
  }
}
