import 'package:flutter/material.dart';

class OrderStatusText extends StatelessWidget {
  final String orderStatus;

  const OrderStatusText({super.key, required this.orderStatus});

  @override
  Widget build(BuildContext context) {
    return Text(
      orderStatus,
      style: const TextStyle(fontSize: 12, letterSpacing: 0.03, fontWeight: FontWeight.w600),
    );
  }
}
