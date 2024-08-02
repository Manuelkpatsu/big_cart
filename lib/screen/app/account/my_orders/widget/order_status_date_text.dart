import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OrderStatusDateText extends StatelessWidget {
  final DateTime date;
  final String pattern;

  const OrderStatusDateText({super.key, required this.date, this.pattern = 'MMM dd y'});

  @override
  Widget build(BuildContext context) {
    return Text(
      HelperFunctions.formatDate(date: date, pattern: pattern),
      style: const TextStyle(fontSize: 12, letterSpacing: 0.03, color: CustomColor.grayTextColor),
    );
  }
}
