import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/config/SizeConfig.dart';

class BoldTextWidget extends StatelessWidget {
  final String text;
  final double? size;
  const BoldTextWidget({super.key, this.size, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.actor(
        fontSize: size == null
            ? SizeConfig.horizontalBlock! * 5
            : SizeConfig.horizontalBlock! * size!,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
