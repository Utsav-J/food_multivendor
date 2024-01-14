import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/custom_app_bar.dart';
import 'package:food_multivendor/common/custom_container.dart';
import 'package:food_multivendor/constants/constants.dart';
import 'package:food_multivendor/common/reusable_heading.dart';
import 'package:food_multivendor/views/home/all_nearby_restaurants.dart';
import 'package:food_multivendor/views/home/fastest_food_closest.dart';
import 'package:food_multivendor/views/home/try_something_new.dart';
import 'package:food_multivendor/views/home/widgets/category_scroll.dart';
import 'package:food_multivendor/views/home/widgets/fastest_food_list.dart';
import 'package:food_multivendor/views/home/widgets/nearby_tiles_list.dart';
import 'package:food_multivendor/views/home/widgets/something_new_list.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.h),
        child: const SafeArea(child: CustomAppBar()),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Container(
            // margin: EdgeInsets.only(left: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CategoryScroll(),
                ReusableHeading(
                  text: "Nearby Restaurants",
                  fontSize: 16,
                  onTapFunction: () {
                    Get.to(() => AllNearbyRestaurantsPage(),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 200));
                  },
                ),
                NearbyTilesList(),
                ReusableHeading(
                  text: "Try Something New",
                  fontSize: 16,
                  onTapFunction: () {
                    Get.to(() => TrySomethingNewPage(),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 200));
                  },
                ),
                SomethingNewTilesList(),
                ReusableHeading(
                  text: "Fastest Foods Closest",
                  fontSize: 16,
                  onTapFunction: () {
                    Get.to(() => FastestFoodClosestPage(),
                        transition: Transition.cupertino,
                        duration: Duration(milliseconds: 200));
                  },
                ),
                FastestFoodTiles()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
