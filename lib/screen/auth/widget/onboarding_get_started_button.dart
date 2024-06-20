import 'package:big_cart_app/screen/widget/gradient_button.dart';
import 'package:flutter/material.dart';

class OnboardingGetStartedButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const OnboardingGetStartedButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: kBottomNavigationBarHeight,
      right: 15,
      left: 15,
      child: GradientButton(
        onPressed: onPressed,
        widget: const Text('Get Started'),
      ),
    );
  }
}
