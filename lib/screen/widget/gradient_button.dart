import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Widget widget;
  final double borderRadius;

  const GradientButton({
    super.key,
    required this.onPressed,
    this.height = 60,
    this.width = double.infinity,
    required this.widget,
    this.borderRadius = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: CustomColor.linearGradient,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
        ),
        child: widget,
      ),
    );
  }
}
