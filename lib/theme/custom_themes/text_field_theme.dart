import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class TextFieldTheme {
  TextFieldTheme._();

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: CustomColor.grayTextColor,
    suffixIconColor: CustomColor.grayTextColor,
    labelStyle: const TextStyle(
      color: CustomColor.grayTextColor,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.03,
    ),
    errorStyle: const TextStyle(fontWeight: FontWeight.normal, letterSpacing: 0.03),
    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(5)),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(5),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(5),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(width: 1, color: CustomColor.redColor),
    ),
    filled: true,
    fillColor: Colors.white,
  );
}
