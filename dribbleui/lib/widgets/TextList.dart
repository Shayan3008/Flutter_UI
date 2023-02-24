import 'package:dribbleui/widgets/BoldText.dart';
import 'package:flutter/material.dart';

import '../configs/SizeConfig.dart';
import 'RegularTextWidget.dart';

class TextListWidget extends StatelessWidget {
  final List<String> list1;
  final double? size;
  final bool? bold;
  const TextListWidget({super.key, required this.list1, this.size, this.bold});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: list1
          .map(
            (e) => Column(
              children: [
                Row(
                  children: [
                    bold != null && bold == true
                        ? BoldTextWidget(text: e)
                        : RegularTextWidget(text: e),
                  ],
                ),
                SizedBox(
                  height: size == null
                      ? SizeConfig.verticalAspect! * 3
                      : SizeConfig.verticalAspect! * 7,
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
