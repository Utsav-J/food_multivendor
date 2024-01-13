import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:food_multivendor/cart/cart_page.dart';
import 'package:food_multivendor/constants/constants.dart';
import 'package:food_multivendor/controllers/entry_controller.dart';
import 'package:food_multivendor/home/home_page.dart';
import 'package:food_multivendor/profile/profile_page.dart';
import 'package:food_multivendor/search/search_page.dart';

import 'package:get/get.dart';

List<Widget> pagesList = const [
  HomePage(),
  SearchPage(),
  CartPage(),
  ProfilePage(),
];

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(
      () => Scaffold(
        // appBar: AppBar(),
        body: Stack(
          children: [
            pagesList[controller.selectedTabIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: kPrimary,
                ),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedIconTheme: const IconThemeData(
                    color: Colors.black38,
                  ),
                  selectedIconTheme: IconThemeData(
                    color: kSecondary,
                    size: 28.sp,
                  ),
                  onTap: (value) {
                    print("The value is : $value");
                    controller.setSelectedTabIndex = value;
                  },
                  currentIndex: controller.selectedTabIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(controller.selectedTabIndex == 0
                          ? AntDesign.appstore1
                          : AntDesign.appstore_o),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(controller.selectedTabIndex == 1
                          ? AntDesign.search1
                          : Icons.search_outlined),
                      label: "Search",
                    ),
                    BottomNavigationBarItem(
                      icon: Badge(
                        label: Text('1'),
                        child: Icon(controller.selectedTabIndex == 2
                            ? AntDesign.shoppingcart
                            : Icons.shopping_cart_outlined),
                      ),
                      label: "Search",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person_2_outlined),
                      label: "User",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
