import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/constants/uidata.dart';
import 'package:food_multivendor/views/home/widgets/something_new_tile.dart';

class SomethingNewTilesList extends StatelessWidget {
  const SomethingNewTilesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width,
      // color: kSecondary,
      height: 195.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          foods.length,
          (index) {
            var currentFood = foods[index];
            return SomethingNewTile(
              title: currentFood['title'],
              image: currentFood['imageUrl'],
              time: currentFood['time'],
              price: currentFood['price'].toString(),
              onTapFunction: () {},
            );
          },
        ),
      ),
    );
  }
}
