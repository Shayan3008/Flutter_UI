// ignore: file_names
import 'package:flutter/material.dart';

class SizeConfig {
  MediaQueryData? mediaQuery;
  static double? screenHeight;
  static double? screenWidth;
  void init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    screenHeight = mediaQuery!.size.height;
    screenWidth = mediaQuery!.size.width;
  }
}
