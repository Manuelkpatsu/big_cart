import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class MakeDefault extends StatelessWidget {
  final int value;
  final int? groupValue;
  final WidgetStateProperty<Color?>? fillColor;
  final void Function(int?)? onChanged;

  const MakeDefault({
    super.key,
    required this.value,
    required this.groupValue,
    this.fillColor,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<int>(
          activeColor: CustomColor.primaryDarkColor,
          fillColor: fillColor,
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          visualDensity: VisualDensity.compact,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        const Text(
          TextStrings.makeDefault,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.03),
        ),
      ],
    );
  }
}
