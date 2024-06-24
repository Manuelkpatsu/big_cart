import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CustomColor.primaryDarkColor,
      textStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 1.0,
      ),
      elevation: 0,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      minimumSize: const Size.fromHeight(60),
    ),
  );
}
