import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class OnboardBodyText extends StatelessWidget {
  final String body;

  const OnboardBodyText({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: CustomColor.grayTextColor,
        fontSize: 15,
        letterSpacing: 0.03,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
