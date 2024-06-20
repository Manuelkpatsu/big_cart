import 'package:big_cart_app/model/page_view_model.dart';
import 'package:big_cart_app/screen/auth/widget/onboarding_get_started_button.dart';
import 'package:big_cart_app/screen/auth/widget/onboarding_page_indicator.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'widget/onboad_page.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  final List<PageViewModel> _pages = [
    const PageViewModel(
      title: TextStrings.onBoardingTitle11,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage11,
      logo: ImageStrings.appLogo,
    ),
    const PageViewModel(
      title: TextStrings.onBoardingTitle12,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage12,
    ),
    const PageViewModel(
      title: TextStrings.onBoardingTitle13,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage13,
    ),
    const PageViewModel(
      title: TextStrings.onBoardingTitle14,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage14,
    ),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: _pages.map((model) => OnboardPage(model: model)).toList(),
          ),
          OnboardingPageIndicator(
            controller: _controller,
            count: _pages.length,
            onDotClicked: (index) => _controller.jumpToPage(index),
          ),
          OnboardingGetStartedButton(onPressed: () {}),
        ],
      ),
    );
  }
}
