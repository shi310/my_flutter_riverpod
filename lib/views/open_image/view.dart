import 'dart:io';

import 'package:flutter/material.dart';

import '../../common/common.dart';
import '../../generated/l10n.dart';
import '../../public/public.dart';

class OpenImageView extends StatelessWidget {
  const OpenImageView({
    required this.arguments,
    super.key,
  });

  final OpenImageViewArguments arguments;

  @override
  Widget build(BuildContext context) {
    Widget child;
    String title = '';
    if (arguments.path == null && arguments.url == null) {
      child = Container(
        color: Colors.black,
      );
      title = S.of(context).dataEmpty;
    } else if (arguments.path != null) {
      child = Image.file( File(arguments.path!), fit: BoxFit.fitWidth, width: double.infinity);
      title = arguments.path!.split('/').last;
    } else {
      child = MyImage(imageUrl: arguments.url ?? '', fit: BoxFit.fitWidth, width: double.infinity);
      title = arguments.url!.split('/').last;
    }

    return Scaffold(
      appBar: builderMyAppBarNormal(
        context: context,
        title: title,
      ),
      body: SingleChildScrollView(
        child: child,
      ),
    );
  }
}

class OpenImageViewArguments {
  const OpenImageViewArguments({
    this.path,
    this.url,
  });

  final String? path;
  final String? url;
}
