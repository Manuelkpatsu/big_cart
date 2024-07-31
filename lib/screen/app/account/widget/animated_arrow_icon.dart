import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class AnimatedArrowIcon extends StatelessWidget {
  final bool initiallyExpanded;

  const AnimatedArrowIcon({super.key, required this.initiallyExpanded});

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: initiallyExpanded ? 0.0 : 0.5,
      duration: const Duration(milliseconds: 200),
      child: Image.asset(ImageStrings.arrowUp, width: 18, height: 18, fit: BoxFit.cover),
    );
  }
}
