import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/app_bar_style.dart';
import 'package:food_multivendor/common/reusable_text.dart';
import 'package:food_multivendor/constants/constants.dart';

class RestaurantTile extends StatelessWidget {
  const RestaurantTile({super.key, required this.restaurant});
  final dynamic restaurant;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                            restaurant['imageUrl'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                            color: kGray.withOpacity(0.7),
                            height: 16.h,
                            width: width,
                            child: RatingBarIndicator(
                              rating: 5,
                              itemCount: 5,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: kSecondary,
                              ),
                              itemSize: 10.h,
                            ),
                          ),
                        ),
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
                        text: restaurant['title'],
                        style: appBarStyle(
                          13.sp,
                          kDark,
                          FontWeight.w500,
                        ),
                      ),
                      ReusableText(
                        text: "Delivery time: ${restaurant['time']}",
                        style: appBarStyle(
                          10.sp,
                          kGray,
                          FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.7,
                        child: Text(
                          restaurant['coords']['address'],
                          style: appBarStyle(10.sp, kGray, FontWeight.w400),
                          overflow: TextOverflow.ellipsis,
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
            child: Container(
              height: 20.h,
              width: 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: restaurant['isAvailable'] == true ||
                        restaurant['isAvailable'] == null
                    ? kPrimary
                    : kSecondaryLight,
              ),
              child: Center(
                child: ReusableText(
                  text: restaurant['isAvailable'] == true ||
                          restaurant['isAvailable'] == null
                      ? "Open"
                      : "Closed",
                  style: appBarStyle(12.sp, kLightWhite, FontWeight.w500),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
