import 'package:flutter/material.dart';

class OrderStatusText extends StatelessWidget {
  final String orderStatus;
  final double fontSize;

  const OrderStatusText({super.key, required this.orderStatus, this.fontSize = 12});

  @override
  Widget build(BuildContext context) {
    return Text(
      orderStatus,
      style: TextStyle(fontSize: fontSize, letterSpacing: 0.03, fontWeight: FontWeight.w600),
    );
  }
}
