import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class CompleteAddressText extends StatelessWidget {
  final String completeAddress;

  const CompleteAddressText({super.key, required this.completeAddress});

  @override
  Widget build(BuildContext context) {
    return Text(
      completeAddress,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 10,
        letterSpacing: 0.03,
        color: CustomColor.grayTextColor,
      ),
    );
  }
}
