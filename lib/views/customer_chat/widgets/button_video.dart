part of '../view.dart';

// 按钮-视频
class _ButtonVideo extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(customerChatViewIsLoadingNotifierProvider);
    final confirmText = S.of(context).confirm;
    final cancelText = S.of(context).cancel;

    // 相册
    final qiVideoIcon = MyCard(
      padding: EdgeInsets.all(10),
      child: Icon(Icons.videocam, color: Theme.of(context).myColors.iconDefault, size: 20),
    );

    if (isLoading) {
      return qiVideoIcon;
    }

    return MyButton(
      borderRadius: BorderRadius.circular(8),
      onPressed: () async {
        FocusScope.of(context).unfocus();
        showMyLoading();
        final file = await MyPicker.getVideo(isCamera: true);
        hideMyLoading();
        if (file != null) {
          final size = await MyPicker.getFileSize(file: file);
          final path = file.path;

          _getMedia(
            path: path,
            size: size,
            mediaType: MediaType.video,
            onConfirm: (context, path, size, mediaType) {

            },
            confirmText: confirmText,
            cancelText: cancelText,
          );
        }
      },
      child: qiVideoIcon,
    );
  }
}
