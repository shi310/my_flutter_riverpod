import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_basic/common/provider/alive/is_used_app.dart';

import '../../../common/common.dart';
import '../../generated/l10n.dart';
import '../../global.dart';
import '../../public/public.dart';
import 'provider.dart';

class IndexView extends StatelessWidget {
  const IndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builderMyAppBarTransparent(
        context: context,
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).myColors.background,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final page = _PageView(
      children: [
        Image.asset(Theme.of(context).myIcons.welcome1, fit: BoxFit.cover),
        Stack(alignment: Alignment.center, children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(Theme.of(context).myIcons.welcome2, fit: BoxFit.cover),
          ),
          Positioned(
            bottom: 32,
            child: SafeArea(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    foregroundColor: Theme.of(context).myColors.onButtonCancel,
                  ),
                  onPressed: () {
                    // Global.to.isUsedApp = 'true';
                    Global.to.providerContainer.read(isUsedAppNotifierProvider.notifier).set('true');
                    final isUsedApp = Global.to.providerContainer.read(isUsedAppNotifierProvider);
                    MyCache.putFile(MyConfig.shard.isUsedAppKey, isUsedApp.aesEncrypt(MyConfig.key.aesKey), time: const Duration(days: 365));
                    context.goNamed(MyRouters.loginView.name);
                  },
                  child: Text(S.of(context).tryItNow),
                ),
              ),
            ),
          ),
        ]),
      ],
    );

    return Stack(alignment: Alignment.center, children: [
      page,
      Positioned(
        bottom: 10,
        child: Row(children: [
          _CircleIndicator(pageIndex: 0),
          const SizedBox(width: 6),
          _CircleIndicator(pageIndex: 1),
        ]),
      ),
    ]);
  }
}

// 圆点下标
class _CircleIndicator extends ConsumerWidget {
  const _CircleIndicator({
    required this.pageIndex,
  });

  final int pageIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activity = ref.watch(indexViewPageIndexProvider);

    return MyCard(
      width: 6,
      height: 6,
      borderRadius: BorderRadius.circular(3),
      color: activity == pageIndex ? Theme.of(context).myColors.primary : Theme.of(context).myColors.buttonDisable,
    );
  }
}

// 圆点下标
class _PageView extends ConsumerWidget {
  const _PageView({
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return PageView(
      onPageChanged: (index) {
        ref.read(indexViewPageIndexProvider.notifier).set(index);
      },
      children: children,
    );
  }
}
