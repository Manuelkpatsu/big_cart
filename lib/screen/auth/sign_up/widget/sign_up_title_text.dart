import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpTitleText extends StatelessWidget {
  const SignUpTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      TextStrings.signUpTitle,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.03,
        color: Colors.black,
      ),
    );
  }
}
