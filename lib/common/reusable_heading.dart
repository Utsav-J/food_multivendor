import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:food_multivendor/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableHeading extends StatelessWidget {
  const ReusableHeading(
      {super.key,
      required this.text,
      required this.fontSize,
      this.fontColor,
      this.onTapFunction});
  final String text;
  final int fontSize;
  final Color? fontColor;
  final void Function()? onTapFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: fontSize.sp,
              fontWeight: FontWeight.bold,
              color: fontColor ?? Colors.black,
            ),
          ),
          GestureDetector(
            onTap: onTapFunction,
            child: Icon(
              AntDesign.appstore1,
              color: kSecondary,
              size: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
