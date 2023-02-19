import 'package:dribbleui/configs/SizeConfig.dart';
import 'package:dribbleui/configs/StyleConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegularTextWidget extends StatelessWidget {
  final String text;
  const RegularTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kQuestrialRegular.copyWith(
          fontSize: SizeConfig.horizantalAspect! * 4.5),
    );
  }
}
