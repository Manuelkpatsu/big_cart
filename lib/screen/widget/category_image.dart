import 'package:flutter/material.dart';

class CategoryImage extends StatelessWidget {
  final String imagePath;
  final Color color;
  final double circleSize;
  final double imageSize;

  const CategoryImage({
    super.key,
    required this.imagePath,
    required this.color,
    this.circleSize = 50,
    this.imageSize = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: circleSize,
      width: circleSize,
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Image.asset(
        imagePath,
        width: imageSize,
        height: imageSize,
        fit: BoxFit.contain,
      ),
    );
  }
}
