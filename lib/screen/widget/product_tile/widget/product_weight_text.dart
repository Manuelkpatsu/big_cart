import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ProductWeightText extends StatelessWidget {
  final String weight;

  const ProductWeightText({super.key, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      weight,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: CustomColor.grayTextColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
