import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/app_bar_style.dart';
import 'package:food_multivendor/common/background_container.dart';
import 'package:food_multivendor/common/reusable_text.dart';
import 'package:food_multivendor/constants/constants.dart';
import 'package:food_multivendor/constants/uidata.dart';
// import 'package:food_multivendor/views/home/widgets/nearby_restaurant_tile.dart';
import 'package:food_multivendor/views/home/widgets/restaurant_tile.dart';

class AllNearbyRestaurantsPage extends StatelessWidget {
  const AllNearbyRestaurantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: ReusableText(
          text: "Nearby Restaurants",
          style: appBarStyle(18.sp, Colors.black, FontWeight.w400),
        ),
      ),
      body: BackgroundContainer(
        color: kOffWhite,
        childWidget: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
          child: ListView(
            // scrollDirection: Axis.horizontal,
            children: List.generate(
              restaurants.length,
              (index) {
                var currentRestaurant = restaurants[index];
                return RestaurantTile(
                  restaurant: currentRestaurant,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
