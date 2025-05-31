import 'dart:io';

import 'package:flutter/cupertino.dart';

import '../../public/public.dart';

Widget builderMediaFileBox({
  // required double maxSize,
  required MediaType mediaType,
  required String path,
}) {
  final file = File(path);
  // final hintText = MyLanguage.fileSizeOut.trArgs(['$maxSize']);

  return mediaType == MediaType.image
    ? Image.file(file, fit: BoxFit.cover)
    : MyVideoPlayer(file: file);
}

Widget builderMediaNetworkBox({
  required MediaType mediaType,
  required String url,
}) {

  return mediaType == MediaType.image
    ? MyImage(imageUrl: url, fit: BoxFit.cover)
    : MyVideoPlayer(videoUrl: url);
}

enum MediaType {
  image,
  video,
}