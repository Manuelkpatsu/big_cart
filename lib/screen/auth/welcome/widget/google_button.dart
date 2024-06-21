import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const GoogleButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      child: Row(
        children: [
          Image.asset(
            ImageStrings.google,
            width: 26,
            height: 26,
            fit: BoxFit.cover,
          ),
          const Expanded(child: Text(TextStrings.google, textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}
