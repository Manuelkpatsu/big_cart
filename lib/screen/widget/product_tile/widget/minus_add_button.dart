import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class MinusAddButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData iconData;

  const MinusAddButton({super.key, required this.onPressed, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      color: CustomColor.primaryDarkColor,
      iconSize: 14,
      splashRadius: 14,
      visualDensity: VisualDensity.compact,
      icon: Icon(iconData),
    );
  }
}
