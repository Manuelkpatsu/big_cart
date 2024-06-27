import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  final void Function(int, CarouselPageChangedReason)? onPageChanged;
  final int position;

  const BannerSlider({super.key, required this.onPageChanged, required this.position});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: 4,
          options: CarouselOptions(
              height: double.infinity,
              autoPlay: true,
              viewportFraction: 1,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) => onPageChanged!(index, reason)),
          itemBuilder: (context, index, realIndex) {
            return Stack(
              children: [
                Image.asset(
                  ImageStrings.banner,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  bottom: 70,
                  left: 30,
                  child: Text(
                    '20% off on your\nfirst purchase',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        Positioned(
          bottom: 20,
          left: 10,
          child: DotsIndicator(
            dotsCount: 4,
            position: position,
            decorator: DotsDecorator(
              size: const Size.square(5),
              activeColor: CustomColor.primaryColor,
              color: Colors.white,
              activeSize: const Size(16, 5),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
