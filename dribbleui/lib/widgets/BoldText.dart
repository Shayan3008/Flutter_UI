import 'package:flutter/material.dart';

import '../configs/SizeConfig.dart';
import '../configs/StyleConfig.dart';

class BoldTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  const BoldTextWidget({super.key, required this.text, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kQuestrialBold.copyWith(
        color: color ?? Colors.black,
        fontSize: size == null
            ? (SizeConfig.screenWidth! / 100) * 5
            : (SizeConfig.screenWidth! / 100) * size!,
      ),
    );
  }
}
