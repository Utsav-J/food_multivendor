import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/app_bar_style.dart';
import 'package:food_multivendor/common/reusable_text.dart';
import 'package:food_multivendor/constants/constants.dart';

class RestaurantTileWidget extends StatelessWidget {
  const RestaurantTileWidget(
      {super.key,
      required this.image,
      required this.logo,
      required this.title,
      required this.time,
      required this.rating,
      required this.ratingCount,
      this.onTapFunction});

  final String image;
  final String logo;
  final String title;
  final String time;
  final String rating;
  final String ratingCount;
  final void Function()? onTapFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.w),
        child: Container(
          width: width * 0.75,
          height: 185.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: SizedBox(
                        height: 112.h,
                        width: width * 0.9,
                        child: Image.network(
                          image,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10.w,
                      top: 10.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                        child: Container(
                          padding: EdgeInsets.all(2.h),
                          color: kLightWhite,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.r),
                            child: Image.network(
                              logo,
                              fit: BoxFit.cover,
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  // vertical: 5.h,
                  horizontal: 12.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: title,
                      style: appBarStyle(14.sp, kDark, FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: "Delivery Time",
                          style: appBarStyle(12.sp, kGray, FontWeight.w500),
                        ),
                        ReusableText(
                          text: time,
                          style: appBarStyle(12.sp, kGray, FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBarIndicator(
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star,
                              color: kSecondary,
                            );
                          },
                          itemCount: 5,
                          itemSize: 24.sp,
                          rating: double.parse(rating),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        ReusableText(
                          text: "$ratingCount+ reviews",
                          style: appBarStyle(
                            10.sp,
                            kGray,
                            FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
