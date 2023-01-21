// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:google_fonts/google_fonts.dart';

import '../../design_system.dart';

class TextAtom extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final int? maxLines;

  const TextAtom({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color = AppColors.scale_05,
    this.fontWeight = FontWeight.w500,
    this.textAlign = TextAlign.center,
    this.maxLines,
  }) : super(key: key);

  const TextAtom.light({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color = AppColors.scale_05,
    this.fontWeight = FontWeight.w300,
    this.textAlign = TextAlign.center,
    this.maxLines,
  }) : super(key: key);

  const TextAtom.regular({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color = AppColors.scale_05,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.center,
    this.maxLines,
  }) : super(key: key);

  const TextAtom.medium({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color = AppColors.scale_05,
    this.fontWeight = FontWeight.w500,
    this.textAlign = TextAlign.center,
    this.maxLines,
  }) : super(key: key);

  const TextAtom.bold({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color = AppColors.scale_05,
    this.fontWeight = FontWeight.w700,
    this.textAlign = TextAlign.center,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
