import 'package:flutter/material.dart';

class OnboardTitleText extends StatelessWidget {
  final String title;

  const OnboardTitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 30,
        height: 1.3,
        letterSpacing: 0.03,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
