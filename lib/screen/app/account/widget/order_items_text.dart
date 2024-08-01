import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OrderItemsText extends StatelessWidget {
  final int items;

  const OrderItemsText({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: '${TextStrings.items}: ',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.03,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: items.toString(),
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
