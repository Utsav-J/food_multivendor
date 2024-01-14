import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/app_bar_style.dart';
import 'package:food_multivendor/common/reusable_text.dart';

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
    );
  }
}
