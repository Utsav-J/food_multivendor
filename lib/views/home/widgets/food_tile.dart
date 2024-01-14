import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/app_bar_style.dart';
import 'package:food_multivendor/common/reusable_text.dart';
import 'package:food_multivendor/constants/constants.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({super.key, required this.food, this.onTapFunction});
  final dynamic food;
  final void Function()? onTapFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.h),
            height: 80.h,
            width: width,
            decoration: BoxDecoration(
              color: kOffWhite,
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.r),
                    ),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 70.w,
                          height: 70.h,
                          child: Image.network(
                            food['imageUrl'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Positioned(
                        //   bottom: 0,
                        //   child: Container(
                        //     padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                        //     color: kGray.withOpacity(0.7),
                        //     height: 16.h,
                        //     width: width,
                        //     child: RatingBarIndicator(
                        //       rating: 5,
                        //       itemCount: 5,
                        //       itemBuilder: (context, index) => const Icon(
                        //         Icons.star,
                        //         color: kSecondary,
                        //       ),
                        //       itemSize: 15.h,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: food['title'],
                        style: appBarStyle(
                          13.sp,
                          kDark,
                          FontWeight.w500,
                        ),
                      ),
                      ReusableText(
                        text: "Delivery time: ${food['time']}",
                        style: appBarStyle(
                          10.sp,
                          kGray,
                          FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.7,
                        height: 18.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: food['foodTags'].length,
                          itemBuilder: (context, index) {
                            var currentTag = food['foodTags'][index];
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.w),
                              // width: 30.w,
                              // height: 10.h,
                              decoration: BoxDecoration(
                                  color: kSecondaryLight,
                                  borderRadius: BorderRadius.circular(5.r)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2.h, horizontal: 5.w),
                                child: Center(
                                  child: ReusableText(
                                    text: currentTag,
                                    style: appBarStyle(
                                      10.sp,
                                      kDark,
                                      FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 5.h,
            right: 5.w,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12.r,
                  backgroundColor: kSecondary,
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: kLightWhite,
                    size: 15.sp,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  height: 20.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: kPrimary,
                  ),
                  child: Center(
                    child: ReusableText(
                      text: "\$ ${food['price'].toString()}",
                      style: appBarStyle(12.sp, kLightWhite, FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
