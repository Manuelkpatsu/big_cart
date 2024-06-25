import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class VerifyOtpSubTitleText extends StatelessWidget {
  const VerifyOtpSubTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      TextStrings.verifyOtpSubTitle,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15, color: CustomColor.grayTextColor),
    );
  }
}
