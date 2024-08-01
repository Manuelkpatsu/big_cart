import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OrderNumberText extends StatelessWidget {
  final int id;

  const OrderNumberText({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${TextStrings.order} #$id',
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: 0.03),
    );
  }
}
