import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class PhoneNumberSubTitleText extends StatelessWidget {
  const PhoneNumberSubTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      TextStrings.phoneNumberSubTitle,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15, color: CustomColor.grayTextColor),
    );
  }
}
