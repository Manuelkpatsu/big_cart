import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class VerifyNumberText extends StatelessWidget {
  const VerifyNumberText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      TextStrings.verifyNumber,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.03,
        color: Colors.black,
      ),
    );
  }
}
