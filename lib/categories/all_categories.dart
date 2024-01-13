import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/categories/category_page.dart';
import 'package:food_multivendor/common/background_container.dart';
import 'package:food_multivendor/common/reusable_text.dart';
import 'package:food_multivendor/constants/uidata.dart';
import 'package:get/get.dart';
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
        childWidget: Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            children: List.generate(
                categories.length,
                (index) => GestureDetector(
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
                                  categories[index]["imageUrl"],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              categories[index]['title'],
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
                    )),
          ),
        ),
      ),
    );
  }
}
