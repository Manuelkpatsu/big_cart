import 'package:big_cart_app/screen/widget/gradient_button.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SendLinkButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SendLinkButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GradientButton(onPressed: onPressed, widget: const Text(TextStrings.sendLink));
  }
}
