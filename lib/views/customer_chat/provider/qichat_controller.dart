import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:qichatsdk_flutter/qichatsdk_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../common/common.dart';
import '../../../public/public.dart';
import '../models/models.dart';
import '../view.dart';
import 'provider.dart';

part 'qichat_controller.g.dart';

/// 起聊控制器
@riverpod
class CustomerChatControllerNotifier extends _$CustomerChatControllerNotifier {
  // 是否释放
  bool isDispose = false;
  // 线路检查器
  QiChatLineDetect? lineDetect;
  // 起聊ChatLib
  ChatLib? chatLib;
  // myDio
  MyDio? myDio;
  // token
  String? token;
  // 客服头像
  String? customerAvatar;
  // consultId
  int? consultId;

  @override
  void build() {
    ref.onDispose(() {
      chatLib?.dispose();
      myDio?.close();
      lineDetect = null;
      chatLib = null;
      myDio = null;
      isDispose = true;
    });
  }

  Future<void> init({
    required CustomerChatViewArguments arguments,
  }) async {
    if (lineDetect != null) {
      return;
    }
    // 初始化 SDK
    lineDetect = QiChatLineDetect(
      arguments: arguments,
      // 线路错误
      onLineError: (error) {
        if (isDispose) return;
        ref.read(customerChatViewTitleNotifierProvider.notifier).set(error.message);
      },
      // 使用线路
      onUseTheLine: (line) {
        if (isDispose) return;
        // 这段代码是查找本地的 token
        // 方案还在构建中
        // final historyFile = await MyCache.getFile(MyConfig.shard.qiChatCustomerHistoryListKey);
        // if (historyFile != null) {
        //   String historyString = await historyFile.readAsString();
        //   String historyDecrypt = historyString.aesDecrypt(MyConfig.key.aesKey);
        //   final history = CustomerHistoryModel.fromJson(historyDecrypt.toJson());
        //   token = history.token;
        // }

        // 初始化 ChatLib
        final listener = QiChatListener(
          // 连接成功
          onConnected: (c) async {
            // 更新 token
            token = c.token;
            // 更新 dio
            myDio = MyDio(
              urls: arguments.apiUrl?.split(',') ?? [],
              timeout: MyConfig.time.timeout,
              headers: {
                'x-token': c.token,
                'x-trace-id': const Uuid().v4(),
              },
              codes: [0, 200],
            );

            if (isDispose) return;
            // 查询入口
            final queryEntrance = await ref.read(customerChatViewQueryEntranceNotifierProvider(
              myDio: myDio,
            ).future);

            consultId = queryEntrance.consults?.firstOrNull?.consultId;

            if (isDispose) return;
            // 分配客服
            final assignWorker = await ref.read(customerChatViewAssignWorkerModelNotifierProvider(
              consultId: consultId ?? 0,
              myDio: myDio,
            ).future);

            customerAvatar = assignWorker.avatar;

            if (isDispose) return;
            // 更新 title
            ref.read(customerChatViewTitleNotifierProvider.notifier).set(assignWorker.nick ?? '');

            final (history, autoReply) = await (
              ref.read(customerChatViewQichatHistoryNotifierProvider(
                consultId: consultId ?? 0,
                workerId: assignWorker.workerId ?? 0,
                myDio: myDio,
              ).future),
              ref.read(customerChatViewQiChatAutoReplyModelNotifierProvider(
                consultId: consultId ?? 0,
                workerId: assignWorker.workerId ?? 0,
                myDio: myDio,
              ).future),
            ).wait;

            List<QiChatMessageModel> messages = <QiChatMessageModel>[];

            for (var e in history.list ?? <QichatInfoModel>[]) {
              if (e.msgOp == "MSG_OP_DELETE") {
                continue;
              }
              // 参数赋值
              final msgId = Int64(int.tryParse(e.msgId ?? '') ?? 0);
              final payloadId = Int64(int.tryParse(e.payloadId ?? '') ?? 0);
              final replyMsgId = Int64(int.tryParse(e.replyMsgId ?? '') ?? 0);
              final createTime = DateTime.tryParse(e.msgTime ?? '').toString().split('.').first;

              // 用来区分消息是用户发的还是客服发的
              // 客服发的放左边
              // 用户发的放右边
              QichatAlignType alignType = QichatAlignType.left;

              if (e.sender == e.chatId) {
                // 用户发的消息
                alignType = QichatAlignType.right;
              } else {
                // 客服发的消息
                alignType = QichatAlignType.left;
              }

              String? url;
              String? content = e.content?.data;
              MessageFormat messageFormat = MessageFormat.MSG_TEXT;

              if (e.msgFmt == 'MSG_IMG') {
                messageFormat = MessageFormat.MSG_IMG;
                url = '${arguments.imageUrl}${e.image?.uri}';
                content = null;
              } else if (e.msgFmt == 'MSG_VIDEO') {
                messageFormat = MessageFormat.MSG_VIDEO;
                url = '${arguments.imageUrl}${e.video?.uri}';
                content = null;
              }

              final qiChatMessage = QiChatMessageModel(
                id: const Uuid().v4(),
                msgId: msgId,
                payloadId: payloadId,
                content: content,
                url: url,
                path: null,
                messageFormat: messageFormat,
                alignType: alignType,
                replyMsgId: replyMsgId,
                completer: null,
                createTime: createTime,
                autoReplyItem: null,
              );

              messages.insert( 0,qiChatMessage);
            }

            // 这里需要添加自动回复到窗体
            final autoReplyData = QiChatMessageModel(
              id: const Uuid().v4(),
              msgId: Int64(0),
              payloadId: Int64(0),
              content: null,
              url: null,
              path: null,
              messageFormat: MessageFormat.MSG_TEXT,
              alignType: QichatAlignType.left,
              replyMsgId: Int64(0),
              completer: null,
              createTime: DateTime.now().toString().split('.').first,
              autoReplyItem: autoReply.autoReplyItem,
            );

            messages.add(autoReplyData);

            // 添加历史记录到窗口
            ref.read(customerChatViewQichatMessageNotifierProvider.notifier).addAll(messages);

            ref.read(customerChatViewScrollControllerNotifierProvider.notifier).moveTabToBottom();

            if (isDispose) return;
            // 更新 loading 为 false（初始化完成）
            ref.read(customerChatViewIsLoadingNotifierProvider.notifier).set(false);
          },
          // 删除消息
          onMsgDeleted: (msg, payloadId, errMsg) {
            if (isDispose) return;
            ref.read(customerChatViewQichatMessageNotifierProvider.notifier).remove(msg.msgId);
          },
          // 消息回执
          onMsgReceipt: (msg, payloadId, errMsg) {
            if (isDispose) return;

            final qichatMessage = ref.read(customerChatViewQichatMessageNotifierProvider);

            for (var element in qichatMessage) {
              final e = element;
              if (e.payloadId == payloadId) {
                element.completer?.complete(msg.msgId);
                e.msgId = msg.msgId;
                e.completer = null;
                ref.read(customerChatViewQichatMessageNotifierProvider.notifier).update(e);
              }
            }
          },
          // 系统消息
          onSystemMsg: (result) {
            if (isDispose) return;
            ref.read(customerChatViewTitleNotifierProvider.notifier).set(result.message);
          },
          // 客服更改
          onWorkChanged: (msg) {
            if (isDispose) return;
            ref.read(customerChatViewTitleNotifierProvider.notifier).set(msg.workerName);
          },
          // 收到客服发来的消息
          onReceivedMsg: (msg) {
            if (isDispose) return;
            final messageDate = ref.read(customerChatViewQichatMessageNotifierProvider);
            // 判断是否是编辑的消息
            for (var element in messageDate) {
              if (element.msgId == msg.msgId) {
                element.payloadId = msg.payloadId;
                element.content = msg.content.data;
                ref.read(customerChatViewQichatMessageNotifierProvider.notifier).update(element);
                return;
              }
            }

            // 用来区分消息是用户发的还是客服发的
            // 客服发的放左边
            // 用户发的放右边
            QichatAlignType alignType = QichatAlignType.left;

            String? url;
            String? content = msg.content.data;

            if (msg.msgFmt == MessageFormat.MSG_IMG) {
              url = '${arguments.imageUrl}${msg.image.uri}';
              content = null;
            } else if (msg.msgFmt == MessageFormat.MSG_VIDEO) {
              url = '${arguments.imageUrl}${msg.video.uri}';
              content = null;
            }

            final qiChatMessage = QiChatMessageModel(
              id: const Uuid().v4(),
              msgId: msg.msgId,
              payloadId: msg.payloadId,
              content: content,
              url: url,
              path: null,
              messageFormat: msg.msgFmt,
              alignType: alignType,
              replyMsgId: msg.replyMsgId,
              completer: null,
              createTime: DateTime.now().toString().split('.').first,
              autoReplyItem: null,
            );

            ref.read(customerChatViewQichatMessageNotifierProvider.notifier).add( qiChatMessage);
            ref.read(customerChatViewScrollControllerNotifierProvider.notifier).moveTabToBottom();
          },
        );

        chatLib = ChatLib();
        chatLib?.delegate = listener;
        chatLib?.initialize(
          userId: arguments.userId ?? 0,
          cert: arguments.cert ?? '',
          token: token ?? '',
          baseUrl: 'wss://$line/v1/gateway/h5',
          sign: arguments.sign ?? '',
        );

        chatLib?.callWebSocket();
      },
    );
  }
}