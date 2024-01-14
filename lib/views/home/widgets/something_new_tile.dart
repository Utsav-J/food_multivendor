import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/app_bar_style.dart';
import 'package:food_multivendor/common/reusable_text.dart';
import 'package:food_multivendor/constants/constants.dart';

class SomethingNewTile extends StatelessWidget {
  const SomethingNewTile(
      {super.key,
      required this.image,
      required this.time,
      required this.price,
      required this.title,
      this.onTapFunction});
  final String title;
  final String image;
  final String time;
  final String price;
  final void Function()? onTapFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
        child: Container(
          width: width * 0.75,
          height: 185.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite,
          ),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: SizedBox(
                    width: width * 0.9,
                    height: 112.h,
                    child: Image.network(
                      image,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: title,
                          style: appBarStyle(
                            14.sp,
                            kDark,
                            FontWeight.w500,
                          ),
                        ),
                        ReusableText(
                          text: price,
                          style: appBarStyle(
                            14.sp,
                            kPrimary,
                            FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: "Delivery time",
                          style: appBarStyle(12.sp, kDark, FontWeight.w500),
                        ),
                        ReusableText(
                          text: time,
                          style: appBarStyle(12.sp, kGray, FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
