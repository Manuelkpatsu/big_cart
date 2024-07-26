import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ProfileEmailText extends StatelessWidget {
  final String email;

  const ProfileEmailText({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Text(
      email,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 12, color: CustomColor.grayTextColor, letterSpacing: -0.5),
    );
  }
}
