import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  final double amount;

  const ProductPriceText({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$${amount.toStringAsFixed(2)}',
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: CustomColor.primaryDarkColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
