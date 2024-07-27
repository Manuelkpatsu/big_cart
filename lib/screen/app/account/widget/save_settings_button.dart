import 'package:big_cart_app/screen/widget/gradient_button.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SaveSettingsButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SaveSettingsButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 30),
      child: GradientButton(
        onPressed: onPressed,
        widget: const Text(TextStrings.saveSettings),
      ),
    );
  }
}
