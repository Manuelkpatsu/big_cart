import 'package:big_cart_app/model/page_view_model.dart';
import 'package:big_cart_app/screen/auth/widget/onboard_body_text.dart';
import 'package:big_cart_app/screen/auth/widget/onboard_title_text.dart';
import 'package:flutter/material.dart';

class OnboardThreePage extends StatelessWidget {
  final PageViewModel model;

  const OnboardThreePage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.16),
          Image.asset(
            model.image,
            height: 384,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 100),
          OnboardTitleText(title: model.title, fontSize: 20),
          const SizedBox(height: 13),
          OnboardBodyText(body: model.body),
        ],
      ),
    );
  }
}
