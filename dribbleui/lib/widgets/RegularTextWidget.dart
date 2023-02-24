import 'package:dribbleui/configs/SizeConfig.dart';
import 'package:dribbleui/configs/StyleConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegularTextWidget extends StatelessWidget {
  final String text;
  final double? size;
  const RegularTextWidget({super.key, required this.text, this.size});

  @override
  Widget build(BuildContext context) {
    print(text);
    return Text(
      text,
      style: kQuestrialRegular.copyWith(
          fontSize: size == null
              ? SizeConfig.horizantalAspect! * 4.5
              : SizeConfig.horizantalAspect! * size!),
    );
  }
}
