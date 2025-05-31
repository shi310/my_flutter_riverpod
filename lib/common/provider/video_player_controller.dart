import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_player/video_player.dart';

part 'video_player_controller.g.dart';

@riverpod
class VideoPlayerControllerManager extends _$VideoPlayerControllerManager {
  final _videoControllers = <VideoPlayerController>[];
  final _chewieMap = <VideoPlayerController, ChewieController>{};

  @override
  void build() {
    ref.onDispose(() {
      for (final controller in _videoControllers) {
        controller.dispose();
      }
      for (final chewie in _chewieMap.values) {
        chewie.dispose();
      }
      _videoControllers.clear();
      _chewieMap.clear();
    });
  }

  Future<VideoPlayerController> getControllerFile({required File file}) async {
    final controller = VideoPlayerController.file(file);
    await controller.initialize();
    _videoControllers.add(controller);
    _addPauseListener(controller);
    return controller;
  }

  Future<VideoPlayerController> getControllerUrl({required String url}) async {
    final controller = VideoPlayerController.networkUrl(Uri.parse(url));
    await controller.initialize();
    _videoControllers.add(controller);
    _addPauseListener(controller);
    return controller;
  }

  ChewieController getChewieController(VideoPlayerController controller) {
    if (_chewieMap.containsKey(controller)) {
      return _chewieMap[controller]!;
    }
    final chewie = ChewieController(
      videoPlayerController: controller,
      autoPlay: false,
      customControls: MaterialControls(),
    );
    _chewieMap[controller] = chewie;
    return chewie;
  }

  void _addPauseListener(VideoPlayerController controller) {
    controller.addListener(() {
      if (controller.value.isPlaying) {
        pauseOthers(controller);
      }
    });
  }

  void pauseOthers(VideoPlayerController current) {
    for (var controller in _videoControllers) {
      if (controller != current && controller.value.isPlaying) {
        controller.pause();
      }
    }
  }
}