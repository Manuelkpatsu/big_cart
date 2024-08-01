import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OrderPlacedDateText extends StatelessWidget {
  final DateTime date;

  const OrderPlacedDateText({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${TextStrings.placedOn} ${HelperFunctions.formatDate(date: date, pattern: 'MMMM dd y')}',
      style: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.03,
        color: CustomColor.grayTextColor,
      ),
    );
  }
}
