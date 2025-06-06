import 'dart:async';
import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_flutter_basic/views/customer_chat/provider/reply_message.dart';
import 'package:my_gallery/common/my_picker.dart';
import 'package:qichatsdk_flutter/qichatsdk_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../common/common.dart';
import '../../generated/l10n.dart';
import '../../public/public.dart';

import '../views.dart';
import 'models/models.dart';
import 'provider/provider.dart';

part 'logics/get_media.dart';
part 'logics/qi_chat_line_detect.dart';
part 'logics/qi_chat_listener.dart';

part 'widgets/app_bar_title.dart';
part 'widgets/chat_list_view.dart';
part 'widgets/chat_bottom.dart';
part 'widgets/button_emoticons.dart';
part 'widgets/button_camera.dart';
part 'widgets/button_album.dart';
part 'widgets/button_video.dart';
part 'widgets/button_send.dart';
part 'widgets/input.dart';
part 'widgets/emoticons_container.dart';
part 'widgets/emoji_grid.dart';
part 'widgets/chat_message_box.dart';
part 'widgets/chat_content.dart';
part 'widgets/chat_qa.dart';
part 'widgets/video_box.dart';
part 'widgets/image_box.dart';
part 'widgets/reply_box.dart';

class CustomerChatView extends StatelessWidget {

  final CustomerChatViewArguments arguments;

  const CustomerChatView({
    super.key,
    required this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(child: Scaffold(
      appBar: builderMyAppBarNormalWidget(
        context: context,
        title: _AppBarTitle(),
      ),
      body: Column(children: [
        Expanded(child: _ChatListView(arguments: arguments)),
        _ChatBottom(arguments: arguments),
      ]),
      backgroundColor: Theme.of(context).myColors.cardBackground,
    ));
  }
}