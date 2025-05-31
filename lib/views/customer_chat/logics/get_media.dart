part of '../view.dart';

// 获取视频 / 图片
void _getMedia({
  required String path,
  required double size,
  required MediaType mediaType,
  required void Function(BuildContext, String, double, MediaType) onConfirm,
  required String confirmText,
  required String cancelText
}) {
  showMyDialog(
    content: (context) => builderMediaFileBox(
      mediaType: mediaType,
      path: path,
    ),
    confirmText: confirmText,
    cancelText: cancelText,
    onConfirm: (context) => onConfirm.call(context, path, size, mediaType),
  );
}