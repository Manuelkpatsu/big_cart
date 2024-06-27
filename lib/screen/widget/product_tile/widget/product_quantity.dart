import 'package:flutter/material.dart';

class ProductQuantity extends StatelessWidget {
  final int quantity;

  const ProductQuantity({super.key, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Text(
      quantity.toString(),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
