import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/constants/font_weight.dart';

class PoppinsTextWidget extends StatelessWidget {
  const PoppinsTextWidget({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textDecoration,
    this.textOverflow,
    this.maxLines,
    this.textAlign,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLines,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        color: color ?? white,
        fontSize: fontSize ?? small,
        fontWeight: fontWeight ?? normalWeight,
        decoration: textDecoration,
        decorationColor: white,
        decorationStyle: TextDecorationStyle.solid,
        decorationThickness: 1.5,
      ),
    );
  }
}
