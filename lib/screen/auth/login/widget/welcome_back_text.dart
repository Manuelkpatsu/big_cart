import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class WelcomeBackText extends StatelessWidget {
  const WelcomeBackText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      TextStrings.welcomeBack,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.03,
        color: Colors.black,
      ),
    );
  }
}
