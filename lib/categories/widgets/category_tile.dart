import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/categories/category_page.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    // could be non const
    super.key,
    required this.currentCategory,
  });

  final currentCategory; // could be var instead of final

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => CategoryPage(),
          transition: Transition.rightToLeft,
          duration: Duration(milliseconds: 200),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              child: Image(
                image: NetworkImage(
                  currentCategory["imageUrl"],
                ),
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              currentCategory['title'],
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.chevron_right_rounded,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
