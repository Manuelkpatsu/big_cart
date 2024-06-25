import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ResendCodeButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ResendCodeButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black.withOpacity(0.1),
      borderRadius: BorderRadius.circular(35),
      onTap: onPressed,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        child: Text(
          TextStrings.resendCode,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            letterSpacing: 0.03,
          ),
        ),
      ),
    );
  }
}
