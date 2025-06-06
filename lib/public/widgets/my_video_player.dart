import 'dart:developer';
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({
    super.key,
    this.videoUrl,
    this.file,
    this.loading,
    this.autoPlay = false,
  });

  final String? videoUrl;
  final File? file;
  final Widget? loading;
  final bool autoPlay;

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();

  factory MyVideoPlayer.file({
    required File file,
    Widget? loading,
    bool autoPlay = false,
  }) => MyVideoPlayer(file: file, loading: loading, autoPlay: autoPlay);

  factory MyVideoPlayer.network({
    required String videoUrl,
    Widget? loading,
    bool autoPlay = false,
  }) => MyVideoPlayer(videoUrl: videoUrl, loading: loading, autoPlay: autoPlay);
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  final _customControls = MaterialControls();

  Future<void> initPlayer() async {
    if (widget.videoUrl == null && widget.file == null) {
      throw('视频地址和视频文件不能同时为空');
    } else {
      if (widget.file != null) {
        _videoPlayerController = VideoPlayerController.file(widget.file!);
      } else {
        _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl!));
      }
    }

    try {
      await _videoPlayerController.initialize();

      log('视频初始化成功');
    } catch (e) {
      log(e.toString());
    }

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: widget.autoPlay,
      customControls: _customControls,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // 视频的封面
    final imageBox = Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
    );

    // 视频区的遮罩，主要是遮住封面图
    final mark = Container(
      color: Colors.black.withValues(alpha: 0.7),
      width: double.infinity,
      height: double.infinity,
    );

    // 加载中：精彩即将开始。。。
    final loadingContent = widget.loading ?? const CupertinoActivityIndicator(
      color: Colors.white,
    );

    final loadingBox = Stack(children: [
      Positioned.fill(child: imageBox),
      Positioned.fill(child: mark),
      Positioned.fill(child: Center(child: loadingContent)),
    ]);

    // 加载中的组成方式：
    // 封面图放最底下
    // 遮罩罩住封面图
    // 加载动画
    // 最后把加载中放到顶层
    return FutureBuilder(
      future: initPlayer(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return loadingBox;
        } else {
          return Chewie(controller: _chewieController);
        }
      },
    );
  }
}