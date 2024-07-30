import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String image;
  final double circleSize;
  final double imageWidth;
  final double imageHeight;
  final Color backgroundColor;

  const CircularImage({
    super.key,
    required this.image,
    this.circleSize = 50,
    this.imageWidth = 32,
    this.imageHeight = 17,
    this.backgroundColor = CustomColor.paymentTypeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleSize,
      height: circleSize,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: Center(
        child: Image.asset(image, width: imageWidth, height: imageHeight, fit: BoxFit.contain),
      ),
    );
  }
}
