import 'package:big_cart_app/model/page_view_model.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widget/next_button.dart';
import 'widget/onboard_three_page.dart';
import 'widget/skip_button.dart';

class OnboardThreeScreen extends StatefulWidget {
  const OnboardThreeScreen({super.key});

  @override
  State<OnboardThreeScreen> createState() => _OnboardThreeScreenState();
}

class _OnboardThreeScreenState extends State<OnboardThreeScreen> {
  final PageController _controller = PageController();
  final List<PageViewModel> _pages = [
    const PageViewModel(
      title: TextStrings.onBoardingTitle31,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage31,
    ),
    const PageViewModel(
      title: TextStrings.onBoardingTitle32,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage32,
    ),
    const PageViewModel(
      title: TextStrings.onBoardingTitle33,
      body: TextStrings.onBoardingSubTitle,
      image: ImageStrings.onboardingImage33,
    ),
  ];
  int _currentPageIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  void _onSkipPressed() {
    setState(() {
      _currentPageIndex = 2;
      _controller.jumpToPage(2);
    });
  }

  void _onDotClicked(int index) {
    setState(() {
      _currentPageIndex = index;
      _controller.jumpToPage(index);
    });
  }

  void _onNextPressed() {
    if (_currentPageIndex == 2) {
      // Navigate to welcome screen
    } else {
      setState(() {
        int page = _currentPageIndex + 1;
        _controller.jumpToPage(page);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: _onPageChanged,
            children: _pages.map((model) => OnboardThreePage(model: model)).toList(),
          ),
          Positioned(
            bottom: kBottomNavigationBarHeight + 10,
            right: 15,
            left: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SkipButton(onPressed: _currentPageIndex != 2 ? _onSkipPressed : null),
                SmoothPageIndicator(
                  controller: _controller,
                  count: _pages.length,
                  effect: const WormEffect(
                    spacing: 5,
                    dotHeight: 8,
                    dotWidth: 8,
                    dotColor: CustomColor.dotColor,
                    activeDotColor: CustomColor.primaryDarkColor,
                  ),
                  onDotClicked: _onDotClicked,
                ),
                NextButton(onPressed: _onNextPressed),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
