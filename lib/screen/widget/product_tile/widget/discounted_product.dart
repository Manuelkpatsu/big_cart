import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class DiscountedProduct extends StatelessWidget {
  final int discount;

  const DiscountedProduct({super.key, required this.discount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 18,
      alignment: Alignment.center,
      color: CustomColor.discountBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Text(
          '-$discount%',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: CustomColor.discountTextColor,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
