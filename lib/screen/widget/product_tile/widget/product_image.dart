import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imagePath;

  const ProductImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: 91,
      height: 94,
      fit: BoxFit.contain,
    );
  }
}
