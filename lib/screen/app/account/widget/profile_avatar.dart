import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String image;
  final double radius;

  const ProfileAvatar({super.key, required this.image, required this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: CustomColor.textButtonColor,
      backgroundImage: AssetImage(image),
    );
  }
}
