import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 18,
      alignment: Alignment.center,
      color: CustomColor.newProductBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Text(
          TextStrings.newText.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: CustomColor.newProductTextColor,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
