import 'package:big_cart_app/model/page_view_model.dart';
import 'package:big_cart_app/screen/auth/widget/onboard_body_text.dart';
import 'package:big_cart_app/screen/auth/widget/onboard_title_text.dart';
import 'package:flutter/material.dart';

class OnboardTwoPage extends StatelessWidget {
  final PageViewModel model;

  const OnboardTwoPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          model.image,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.6,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          child: ClipPath(
            clipper: CurveClipper(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OnboardTitleText(title: model.title),
                  const SizedBox(height: 20),
                  OnboardBodyText(body: model.body),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    double curveHeight = 40;

    final path = Path();
    path.moveTo(0, curveHeight);
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, curveHeight);
    path.quadraticBezierTo(w / 2, -curveHeight, 0, curveHeight);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
