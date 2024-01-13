import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/custom_app_bar.dart';
import 'package:food_multivendor/common/custom_container.dart';
import 'package:food_multivendor/constants/constants.dart';
import 'package:food_multivendor/home/widgets/category_scroll.dart';

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
            child: Column(
              children: [CategoryScroll()],
            ),
          ),
        ),
      ),
    );
  }
}
