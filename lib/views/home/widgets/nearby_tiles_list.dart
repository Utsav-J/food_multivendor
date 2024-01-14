import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_multivendor/constants/constants.dart';
import 'package:food_multivendor/constants/uidata.dart';
import 'package:food_multivendor/views/home/widgets/nearby_restaurant_tile.dart';

class NearbyTilesList extends StatelessWidget {
  const NearbyTilesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kOffWhite,
      height: 215.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          restaurants.length,
          (index) {
            var currentRestaurant = restaurants[index];
            return RestaurantTileWidget(
              image: currentRestaurant['imageUrl'].toString(),
              logo: currentRestaurant['logoUrl'].toString(),
              title: currentRestaurant['title'].toString(),
              time: currentRestaurant['time'].toString(),
              rating: currentRestaurant['rating'].toString(),
              ratingCount: currentRestaurant['ratingCount'].toString(),
            );
          },
        ),
      ),
    );
  }
}
