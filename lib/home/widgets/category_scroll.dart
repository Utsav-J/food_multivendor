import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:food_multivendor/constants/uidata.dart';
// import 'package:food_multivendor/controllers/categor_ontroller.dart';
// import 'package:get/get.dart';

import 'category_widget.dart';

class CategoryScroll extends StatelessWidget {
  const CategoryScroll({super.key});
  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(CategoryController());
    return Container(
      height: 80.h,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories
            .map(
              (e) => CategoryWidget(
                category: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
