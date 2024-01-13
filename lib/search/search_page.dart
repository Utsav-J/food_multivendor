import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/custom_container.dart';
import 'package:food_multivendor/constants/constants.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75.h),
          child: Container(),
        ),
        body: CustomContainer(
          containerContent: Center(
            child: Text("Search"),
          ),
        ));
  }
}
