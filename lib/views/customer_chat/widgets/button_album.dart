part of '../view.dart';
// 按钮-相册
class _ButtonAlbum extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(customerChatViewIsLoadingNotifierProvider);
    final confirmText = S.of(context).confirm;
    final cancelText = S.of(context).cancel;

    // 相册
    final qiAlbumIcon = MyCard(
      padding: EdgeInsets.all(10),
      child: Icon(Icons.image, color: Theme.of(context).myColors.iconDefault, size: 20),
    );

    if (isLoading) {
      return qiAlbumIcon;
    }

    return MyButton(
      borderRadius: BorderRadius.circular(8),
      onPressed: () async {
        FocusScope.of(context).unfocus();
        showMyLoading();
        final file = await MyPicker.getMedia(isCamera: false);
        hideMyLoading();
        if (file != null) {
          final size = await MyPicker.getFileSize(file: file);
          final path = file.path;
          final fileType = file.path.split('.').last.toLowerCase();
          final fileName = '${DateTime.now().millisecondsSinceEpoch}.$fileType';

          MediaType mediaType = MediaType.image;

          if (['mov', 'mp4', 'avi', '3gp', 'mkv', 'webm', 'flv', 'm4v', 'ts'].contains(fileType)) {
            mediaType = MediaType.video;
          }

          _getMedia(
            path: path,
            size: size,
            mediaType: mediaType,
            onConfirm: (context, path, size, mediaType) async {
              // 消息发送等待方法
              Completer<Int64> sendCompleter = Completer<Int64>();

              final message = QiChatMessageModel(
                id: const Uuid().v4(),
                msgId: Int64(0),
                payloadId: Int64(0),
                content: null,
                path: path,
                url: null,
                messageFormat: mediaType == MediaType.image ? MessageFormat.MSG_IMG : MessageFormat.MSG_VIDEO,
                alignType: QichatAlignType.right,
                replyMsgId: Int64(0),
                completer: sendCompleter,
                createTime: DateTime.now().toString().split('.').first,
                autoReplyItem: null,
              );

              // 获取消息列表
              // 准备往里面添加消息
              final chatList = ref.read(customerChatViewQichatMessageNotifierProvider.notifier);

              // 添加消息
              chatList.add(message);

              // 移动列表到底部
              ref.read(customerChatViewScrollControllerNotifierProvider.notifier).moveTabToBottom();

              // 获取当前起聊的主体
              final controller = ref.read(customerChatControllerNotifierProvider.notifier);
              // 构建 MultipartFile 对象
              final multipartFile = await MultipartFile.fromFile(path,
                filename: fileName,
              );
              // 上传文件
              controller.myDio?.upload(ApiPath.qichat.upload,
                data: {
                  'myFile': multipartFile,
                  'type': '4',
                },
                onSuccess: (code, msg, data) async {
                  // 拿到payloadId
                  if (data != null && data is Map<String, dynamic>) {
                    if (mediaType == MediaType.image) {
                      controller.chatLib?.sendMessage(data['filepath'], MessageFormat.MSG_IMG, Int64(controller.consultId ?? 0));
                    } else {
                      controller.chatLib?.sendVideoMessage(data['filepath'], '', '', Int64(controller.consultId ?? 0));
                    }
                    final newMessage = message.copyWith(
                      payloadId: controller.chatLib?.payloadId,
                    );
                    chatList.replace(message, newMessage);
                  } else {
                    sendCompleter.completeError('发送失败');
                  }
                },
                onConnectError: (e) async{
                  sendCompleter.completeError(e);
                },
                onError: (e) async {
                  showResponseError(e);
                  sendCompleter.completeError('上传失败');
                },
                onSendProgress: (value, total) async {
                  // 更新上传进度
                  MyLogger.w('上传进度: $value/$total');
                },
              );
            },
            confirmText: confirmText,
            cancelText: cancelText,
          );
        }
      },
      child: qiAlbumIcon,
    );
  }
}