import 'package:flutter/material.dart';

import '../../common/common.dart';
import '../../public/public.dart';

class CustomerFaqInfoView extends StatelessWidget {
  const CustomerFaqInfoView({
    super.key,
    required this.arguments,
  });
  
  final CustomerFaqInfoModel arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builderMyAppBarNormal(
        context: context,
        title: arguments.title,
      ),
      body: _Body(arguments: arguments),
      backgroundColor: Theme.of(context).myColors.background,
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.arguments,
  });

  final CustomerFaqInfoModel arguments;

  @override
  Widget build(BuildContext context) {
    return MyCard(
      // margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).myColors.cardBackground,
      child: SafeArea(
        child: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (arguments.answer != null && arguments.answer!.isNotEmpty)
            MyHtml(data: arguments.answer),
          if (arguments.answer != null && arguments.picUrl!.isNotEmpty)
            const SizedBox(height: 10),
          if (arguments.answer != null && arguments.picUrl!.isNotEmpty)
            MyImage(imageUrl: arguments.picUrl!, width: double.infinity),
        ])),
      ),
    );
  }
}
