import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/SizeConfig.dart';

class RegularTextWidget extends StatelessWidget {
  final String text;
  final double? size;
  const RegularTextWidget({super.key, required this.text, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.actor(
        fontSize: size == null
            ? SizeConfig.horizontalBlock! * 5
            : SizeConfig.horizontalBlock! * size!,
      ),
    );
  }
}
