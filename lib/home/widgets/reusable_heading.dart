import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableHeading extends StatelessWidget {
  const ReusableHeading(
      {super.key, required this.text, required this.fontSize, this.fontColor});
  final String text;
  final int fontSize;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize.sp,
        fontWeight: FontWeight.bold,
        color: fontColor ?? Colors.black,
      ),
    );
  }
}
