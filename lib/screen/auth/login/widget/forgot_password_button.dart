import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ForgotPasswordButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(foregroundColor: CustomColor.linkColor),
      child: const Text(TextStrings.forgotPassword),
    );
  }
}
