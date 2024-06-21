import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  final VoidCallback? onTap;

  const HaveAccount({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: '${TextStrings.haveAccount} ',
          style: TextStyle(
            color: CustomColor.grayTextColor,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.03,
          ),
          children: [
            TextSpan(
              text: TextStrings.login,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
