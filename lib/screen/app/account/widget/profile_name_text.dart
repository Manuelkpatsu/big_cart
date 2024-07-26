import 'package:flutter/material.dart';

class ProfileNameText extends StatelessWidget {
  final String name;

  const ProfileNameText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: -0.5),
    );
  }
}
