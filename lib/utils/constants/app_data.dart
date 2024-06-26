import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class AppData {
  AppData._();

  // Bottom Navigation Bar
  static const List<String> bottomNavBarLabels = [
    TextStrings.home,
    TextStrings.account,
    TextStrings.favorites,
    TextStrings.cart,
  ];
  static const List<Widget> screens = [
    Center(child: Text(TextStrings.home)),
    Center(child: Text(TextStrings.account)),
    Center(child: Text(TextStrings.favorites)),
    Center(child: Text(TextStrings.cart)),
  ];
  static const List<IconData> bottomNavBarIcons = [
    Icons.home_outlined,
    Icons.account_circle_outlined,
    Icons.favorite_border_outlined,
    Icons.shopping_bag_outlined,
  ];
}
