import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String? logo;

  const Logo({super.key, required this.logo});

  @override
  Widget build(BuildContext context) {
    return logo != null
        ? Image.asset(logo!, height: 50, width: 127, fit: BoxFit.contain)
        : const SizedBox.shrink();
  }
}
