import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_basic/global.dart';
import 'package:my_flutter_basic/views/customer_chat/provider.dart';
import 'package:qichatsdk_flutter/qichatsdk_flutter.dart';
import 'package:uuid/uuid.dart';

import '../../common/common.dart';
import '../../public/public.dart';

part 'logics/on_use_line.dart';
part 'logics/qi_chat_line_detect.dart';
part 'logics/qi_chat_listener.dart';

class CustomerChatView extends ConsumerStatefulWidget {
  const CustomerChatView({
    super.key,
    required this.arguments,
  });

  final CustomerChatViewArguments arguments;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomerChatViewState();
}

class _CustomerChatViewState extends ConsumerState<CustomerChatView> {
  // 输入框控制器
  final inputTextController = TextEditingController();
  final inputFocusNode = FocusNode();

  // 线路检查器
  QiChatLineDetect? lineDetect;
  // 起聊ChatLib
  ChatLib? chatLib;
  // myDio
  MyDio? myDio;
  // token
  String? token;
  // 当页面已经关闭的时候
  // 这个时候使用 ref 去读取变量会有不可预估的问题
  // 所以需要让异步方法知道页面的状态，以免使用已经被销毁的 ref
  MyViewState myViewState = MyViewState();

  @override
  void initState() {
    super.initState();
    // 初始化 SDK
    lineDetect = QiChatLineDetect(
      arguments: widget.arguments,
      onLineError: (error) {
        if (!mounted) return;
        ref.read(customerChatViewTitleNotifierProvider.notifier).set(error.message);
      },
      onUseTheLine: (line) {
        if (!mounted) return;
        // 这段代码是查找本地的 token
        // 方案还在构建中
        // final historyFile = await MyCache.getFile(MyConfig.shard.qiChatCustomerHistoryListKey);
        // if (historyFile != null) {
        //   String historyString = await historyFile.readAsString();
        //   String historyDecrypt = historyString.aesDecrypt(MyConfig.key.aesKey);
        //   final history = CustomerHistoryModel.fromJson(historyDecrypt.toJson());
        //   token = history.token;
        // }

        final listener = QiChatListener(
          onConnected: (c) async {
            // 更新 token
            token = c.token;
            // 更新 dio
            myDio = MyDio(
              urls: widget.arguments.apiUrl?.split(',') ?? [],
              timeout: MyConfig.time.timeout,
              headers: {
                'x-token': c.token,
                'x-trace-id': const Uuid().v4(),
              },
              codes: [0, 200],
            );

            if (!mounted) return;
            // 查询入口
            final queryEntrance = await ref.read(customerChatViewQueryEntranceNotifierProvider(
              myDio: myDio,
            ).future);


            // 确认 consultId
            int consultId = queryEntrance.consults?.firstOrNull?.consultId ?? 0;

            if (!mounted) return;
            // 分配客服
            final assignWorker = await ref.read(customerChatViewAssignWorkerModelNotifierProvider(
              consultId: consultId,
              myDio: myDio,
            ).future);

            if (!mounted) return;
            // 更新 title
            ref.read(customerChatViewTitleNotifierProvider.notifier).set(assignWorker.nick ?? '');

            // 获取历史记录 和 自动回复
            await Future.wait([
              // 获取历史
              ref.read(customerChatViewQichatHistoryNotifierProvider(
                consultId: consultId,
                workerId: assignWorker.workerId ?? 0,
                myDio: myDio,
              ).future),

              // 获取自动回复
              ref.read(customerChatViewQiChatAutoReplyModelNotifierProvider(
                consultId: consultId,
                workerId: assignWorker.workerId ?? 0,
                myDio: myDio,
              ).future),
            ]);

            if (!mounted) return;
            // 更新 loading 为 false（初始化完成）
            ref.read(customerChatViewIsLoadingNotifierProvider.notifier).set(false);
          },
          onMsgDeleted: (msg, payloadId, errMsg) {},
          onMsgReceipt: (msg, payloadId, errMsg) {},
          onSystemMsg: (result) {},
          onWorkChanged: (msg) {},
          onReceivedMsg: (msg) {},
        );

        chatLib = ChatLib();
        chatLib?.delegate = listener;
        chatLib?.initialize(
          userId: widget.arguments.userId ?? 0,
          cert: widget.arguments.cert ?? '',
          token: token ?? '',
          baseUrl: 'wss://$line/v1/gateway/h5',
          sign: widget.arguments.sign ?? '',
        );

        chatLib?.callWebSocket();
      },
    );
  }

  @override
  void dispose() {
    inputTextController.dispose();
    inputFocusNode.dispose();
    lineDetect = null;
    chatLib?.dispose();
    myDio?.close();
    chatLib = null;
    myDio = null;
    myViewState.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(child: Scaffold(
      appBar: builderMyAppBarNormalWidget(
        context: context,
        title: _AppBarTitle(),
      ),
      body: Column(children: [
        Expanded(child: _ChatListView()),
        _ChatBottom(),
      ]),
      backgroundColor: Theme.of(context).myColors.cardBackground,
    ));
  }
}

/// 顶部标题
class _AppBarTitle extends ConsumerWidget {
  const _AppBarTitle();

  @override Widget build(BuildContext context, WidgetRef ref) {
    // 监听标题的变化
    final title = ref.watch(customerChatViewTitleNotifierProvider);
    return Text(title, style: TextStyle(
      color: Theme.of(context).myColors.textDefault,
      fontSize: MyFontSize.bodyLarge.value,
    ));
  }
}

/// 聊天列表
class _ChatListView extends StatelessWidget {
  const _ChatListView();

  @override Widget build(BuildContext context) {
    return Container();
  }
}

/// 聊天底部
class _ChatBottom extends StatelessWidget {
  const _ChatBottom();

  @override Widget build(BuildContext context) {
    return Container();
  }
}