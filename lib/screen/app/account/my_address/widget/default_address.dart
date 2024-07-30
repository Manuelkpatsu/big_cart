import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class DefaultAddress extends StatelessWidget {
  const DefaultAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        color: CustomColor.primaryLightColor,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        child: Text(
          TextStrings.defaultText.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 10,
            color: CustomColor.primaryDarkColor,
            letterSpacing: 0.05,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
