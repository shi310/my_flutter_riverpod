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

          MediaType mediaType = MediaType.image;

          if (['mov', 'mp4', 'avi', '3gp', 'mkv', 'webm', 'flv', 'm4v', 'ts'].contains(fileType)) {
            mediaType = MediaType.video;
          }

          _getMedia(
            path: path,
            size: size,
            mediaType: mediaType,
            onConfirm: (context, path, size, mediaType)  {
              final controller = ref.read(customerChatControllerNotifierProvider.notifier);
              controller.sendMedia(path: path, mediaType: mediaType);
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