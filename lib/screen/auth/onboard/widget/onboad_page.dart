import 'package:big_cart_app/model/page_view_model.dart';
import 'package:big_cart_app/screen/widget/onboard_body_text.dart';
import 'package:big_cart_app/screen/widget/onboard_title_text.dart';
import 'package:flutter/material.dart';

import 'logo.dart';

class OnboardPage extends StatelessWidget {
  final PageViewModel model;

  const OnboardPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(model.image), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OnboardTitleText(title: model.title),
            Logo(logo: model.logo),
            model.logo == null ? const SizedBox(height: 20) : const SizedBox(height: 10),
            OnboardBodyText(body: model.body),
          ],
        ),
      ),
    );
  }
}
