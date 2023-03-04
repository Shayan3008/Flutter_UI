import 'package:flutter/cupertino.dart';

class SizeConfig {
  MediaQueryData? mediaQuery;
  static double? screenHeight;
  static double? screenWidth;
  static double? horizontalBlock;
  static double? verticalBlock;
  void init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    screenHeight = mediaQuery!.size.height;
    screenWidth = mediaQuery!.size.width;
    horizontalBlock = screenWidth! / 100;
    verticalBlock = screenHeight! / 100;
  }
}
