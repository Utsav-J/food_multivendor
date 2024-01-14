import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/constants/constants.dart';
import 'package:food_multivendor/constants/uidata.dart';

class FastestFoodTiles extends StatelessWidget {
  const FastestFoodTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width,
      color: kSecondary,
      height: 225.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          foods.length,
          (index) {
            var currentFood = foods[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              height: 50.h,
              width: 275.w,
              color: kPrimary,
            );
          },
        ),
      ),
    );
  }
}
