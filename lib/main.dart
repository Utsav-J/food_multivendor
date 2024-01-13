import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/constants/constants.dart';
import 'package:food_multivendor/views/entry_screen.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FoodMV',
        theme: ThemeData(
          scaffoldBackgroundColor: kOffWhite,
          iconTheme: const IconThemeData(color: kOffWhite),
          primarySwatch: MyWhiteSwatch(),
          // useMaterial3: true,
        ),
        home: const EntryScreen(),
      ),
    );
  }
}
