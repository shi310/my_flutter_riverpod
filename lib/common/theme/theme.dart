import 'package:flutter/material.dart';

part 'my_styles.dart';
part 'my_colors.dart';
part 'my_icons.dart';

extension ThemeColorExtension on ThemeData {
  static final _cacheColor = <Brightness, MyColors>{};
  MyColors get myColors => _cacheColor.putIfAbsent(brightness, () => MyColors(brightness: brightness));

  static final _cacheStyle = <Brightness, MyStyles>{};
  MyStyles get myStyles => _cacheStyle.putIfAbsent(brightness, () => MyStyles(myColors: myColors));

  static final _cacheIcons = <Brightness, MyIcons>{};
  MyIcons get myIcons => _cacheIcons.putIfAbsent(brightness, () => MyIcons(brightness: brightness));
}