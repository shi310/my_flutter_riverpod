import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_basic/common/provider/video_player_controller.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends ConsumerWidget {
  const MyVideoPlayer({
    super.key,
    this.videoUrl,
    this.file,
    this.loading,
  });

  final String? videoUrl;
  final File? file;
  final Widget? loading;

  factory MyVideoPlayer.file({
    required File file,
    Widget? loading,
  }) => MyVideoPlayer(file: file, loading: loading);

  factory MyVideoPlayer.network({
    required String videoUrl,
    Widget? loading,
  }) => MyVideoPlayer(videoUrl: videoUrl, loading: loading);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controllerManager = ref.watch(videoPlayerControllerManagerProvider.notifier);
    final size = MediaQuery.of(context).size.width;

    // 构建加载动画
    final loadingWidget = loading ?? const CupertinoActivityIndicator();
    final loadingBox = Stack(
      children: [
        Container(width: double.infinity, height: double.infinity, color: Colors.black),
        Container(width: double.infinity, height: double.infinity, color: Colors.black.withValues(alpha: 0.7)),
        Center(child: loadingWidget),
      ],
    );

    Future<VideoPlayerController> controllerFuture;
    if (file != null) {
      controllerFuture = controllerManager.getControllerFile(file: file!);
    } else if (videoUrl != null) {
      controllerFuture = controllerManager.getControllerUrl(url: videoUrl!);
    } else {
      throw ArgumentError('视频地址和视频文件不能同时为空');
    }

    return RepaintBoundary(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: size, maxHeight: size),
        child: FutureBuilder<VideoPlayerController>(
          future: controllerFuture,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return loadingBox;
            }

            final videoController = snapshot.data!;
            final chewieController = controllerManager.getChewieController(videoController);

            return Container(
              color: Colors.black,
              child: Chewie(controller: chewieController),
            );
          },
        ),
      ),
    );
  }
}