import 'dart:io';

import 'package:flutter/material.dart';

import '../../common/common.dart';
import '../../generated/l10n.dart';
import '../../public/public.dart';

class OpenVideoView extends StatelessWidget {
  const OpenVideoView({
    required this.arguments,
    super.key,
  });

  final OpenVideoViewArguments arguments;

  @override
  Widget build(BuildContext context) {
    Widget body;
    String title = '';

    if (arguments.path == null && arguments.url == null) {
      body = Container(
        color: Colors.black,
      );
      title = S.of(context).dataEmpty;
    } else if (arguments.path != null) {
      body = MyVideoPlayer(file: File(arguments.path!), autoPlay: true);
      title = arguments.path!.split('/').last;
    } else {
      body = MyVideoPlayer(videoUrl: arguments.url, autoPlay: true);
      title = arguments.url!.split('/').last;
    }

    return Scaffold(
      appBar: builderMyAppBarNormal(
        context: context,
        title: title,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: body,
      ),
    );
  }
}

class OpenVideoViewArguments {
  const OpenVideoViewArguments({
    this.path,
    this.url,
  });

  final String? path;
  final String? url;
}
