import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OrderAmountText extends StatelessWidget {
  final double amount;

  const OrderAmountText({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: '${TextStrings.amount}: ',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.03,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: '\$${amount.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.03,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
