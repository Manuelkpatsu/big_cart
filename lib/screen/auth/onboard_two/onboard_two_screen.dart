import 'package:big_cart_app/model/page_view_model.dart';
import 'package:big_cart_app/screen/widget/onboarding_get_started_button.dart';
import 'package:big_cart_app/screen/widget/onboarding_page_indicator.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'widget/onboard_two_page.dart';

class OnboardTwoScreen extends StatefulWidget {
  const OnboardTwoScreen({super.key});

  @override
  State<OnboardTwoScreen> createState() => _OnboardTwoScreenState();
}

class _OnboardTwoScreenState extends State<OnboardTwoScreen> {
  final PageController _controller = PageController();
  final List<PageViewModel> _pages = [
    const PageViewModel(
      title: TextStrings.onBoardingTitle21,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage21,
      logo: ImageStrings.appLogo,
    ),
    const PageViewModel(
      title: TextStrings.onBoardingTitle13,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage22,
    ),
    const PageViewModel(
      title: TextStrings.onBoardingTitle12,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage23,
    ),
    const PageViewModel(
      title: TextStrings.onBoardingTitle14,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage24,
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
            children: _pages.map((model) => OnboardTwoPage(model: model)).toList(),
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
