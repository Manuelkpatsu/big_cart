import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageIndicator extends StatelessWidget {
  final PageController controller;
  final int count;
  final void Function(int)? onDotClicked;

  const OnboardingPageIndicator({super.key, required this.controller, required this.count, required this.onDotClicked,});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: kBottomNavigationBarHeight + 90,
      right: 15,
      left: 15,
      child: Align(
        alignment: Alignment.center,
        child: SmoothPageIndicator(
          controller: controller,
          count: count,
          effect: const WormEffect(
            spacing: 5,
            dotHeight: 8,
            dotWidth: 8,
            dotColor: CustomColor.dotColor,
            activeDotColor: CustomColor.primaryDarkColor,
          ),
          onDotClicked: onDotClicked,
        ),
      ),
    );
  }
}
