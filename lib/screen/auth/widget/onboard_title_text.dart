import 'package:flutter/material.dart';

class OnboardTitleText extends StatelessWidget {
  final String title;
  final double fontSize;

  const OnboardTitleText({super.key, required this.title, this.fontSize = 30});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        height: 1.3,
        letterSpacing: 0.03,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
