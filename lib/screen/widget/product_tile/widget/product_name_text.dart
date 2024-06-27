import 'package:flutter/material.dart';

class ProductNameText extends StatelessWidget {
  final String name;

  const ProductNameText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: const TextStyle(
          overflow: TextOverflow.ellipsis,
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
