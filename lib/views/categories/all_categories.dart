import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/common/background_container.dart';
import 'package:food_multivendor/common/reusable_text.dart';
import 'package:food_multivendor/constants/constants.dart';
import 'package:food_multivendor/constants/uidata.dart';
import 'package:food_multivendor/views/categories/widgets/category_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class AllCategoryPage extends StatelessWidget {
  const AllCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: ReusableText(
          text: "All Categories",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: BackgroundContainer(
        color: kOffWhite,
        childWidget: Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            children: List.generate(categories.length, (index) {
              var currentCategory = categories[index];
              return CategoryTile(currentCategory: currentCategory);
            }),
          ),
        ),
      ),
    );
  }
}
