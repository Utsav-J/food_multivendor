import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/app_bar_style.dart';
import 'package:food_multivendor/common/reusable_text.dart';
import 'package:food_multivendor/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 80.h,
      color: kOffWhite,
      child: Container(
        // color: Colors.red,
        color: kOffWhite,
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: kSecondary,
                  foregroundImage: AssetImage("assets/images/profile.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: "Deliver here",
                        style: appBarStyle(16.sp, kSecondary, FontWeight.bold),
                      ),
                      SizedBox(
                          width: width * 0.65,
                          child: ReusableText(
                            text: "603203 Periyar Street Potheri",
                            style: appBarStyle(
                              12.sp,
                              kGrayLight,
                              FontWeight.bold,
                            ),
                          ))
                    ],
                  ),
                ),
                Text(
                  getTimeEmoji(),
                  style: TextStyle(fontSize: 35.sp),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

String getTimeEmoji() {
  DateTime time = DateTime.now();
  var hour = time.hour;
  if (hour >= 0 && hour <= 12) {
    return '🌤️';
  } else if (hour >= 12 && hour <= 17) {
    return '🌥️';
  } else {
    return '🌙';
  }
}
