import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/constants/constants.dart';
import 'package:food_multivendor/controllers/categor_ontroller.dart';
import 'package:food_multivendor/views/categories/all_categories.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, this.category});

  final category;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return GestureDetector(
      onTap: () {
        print(controller.getSelectedCategory);
        if (controller.getSelectedCategory == category['_id']) {
          controller.setSelectedCategory = '';
          controller.setSelectedTitle = '';
        } else if (category['value'] == 'more') {
          Get.to(() => const AllCategoryPage(),
              transition: Transition.fadeIn,
              duration: const Duration(milliseconds: 200));
        } else {
          controller.setSelectedCategory = category['_id'];
          controller.setSelectedTitle = category['title'];
        }
      },
      child: Obx(
        () => Container(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 16.w),
          child: Column(
            children: [
              CircleAvatar(
                radius: 25.r,
                backgroundImage: NetworkImage(category["imageUrl"]),
                backgroundColor:
                    controller.getSelectedCategory == category['_id']
                        ? kSecondary.withOpacity(0.75)
                        : Colors.white,
              ),
              Text(category["title"])
            ],
          ),
        ),
      ),
    );
  }
}
