part of '../view.dart';

// 按钮-拍照
class _ButtonCamera extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(customerChatViewIsLoadingNotifierProvider);
    final confirmText = S.of(context).confirm;
    final cancelText = S.of(context).cancel;

    // 拍照
    final qiCameraIcon = MyCard(
      padding: EdgeInsets.all(10),
      child: Icon(Icons.photo_camera, color: Theme.of(context).myColors.iconDefault, size: 20),
    );

    if (isLoading) {
      return qiCameraIcon;
    }

    return MyButton(
      borderRadius: BorderRadius.circular(8),
      onPressed: () async {
        FocusScope.of(context).unfocus();
        showMyLoading();
        final file = await MyPicker.getImage(isCamera: true);
        hideMyLoading();
        if (file != null) {
          final size = await MyPicker.getFileSize(file: file);
          final path = file.path;
          _getMedia(
            path: path,
            size: size,
            mediaType: MediaType.image,
            onConfirm: (context, path, size, mediaType)  {
              final controller = ref.read(customerChatControllerNotifierProvider.notifier);
              controller.sendMedia(path: path, mediaType: mediaType);
            },
            confirmText: confirmText,
            cancelText: cancelText,
          );
        }
      },
      child: qiCameraIcon,
    );
  }
}
