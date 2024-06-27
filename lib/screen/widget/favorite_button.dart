import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool favorite;
  final double iconSize;
  final double splashRadius;

  const FavoriteButton({
    super.key,
    required this.onPressed,
    required this.favorite,
    this.iconSize = 16,
    this.splashRadius = 15,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      visualDensity: VisualDensity.compact,
      onPressed: onPressed,
      splashRadius: splashRadius,
      iconSize: iconSize,
      color: favorite ? CustomColor.redColor : CustomColor.grayTextColor,
      icon: Icon(favorite ? Icons.favorite_rounded : Icons.favorite_border_rounded),
    );
  }
}
