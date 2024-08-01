import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class PendingText extends StatelessWidget {
  const PendingText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      TextStrings.pending,
      style: TextStyle(fontSize: 12, letterSpacing: 0.03, color: CustomColor.grayTextColor),
    );
  }
}
