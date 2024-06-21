import 'package:flutter/material.dart';

import 'screen/auth/onboard_two/onboard_two_screen.dart';
import 'theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Big Cart',
      theme: CustomTheme.theme,
      home: const OnboardTwoScreen(),
    );
  }
}
