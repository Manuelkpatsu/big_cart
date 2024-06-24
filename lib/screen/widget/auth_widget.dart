import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  final double height;
  final Widget child;

  const AuthWidget({super.key, required this.height, required this.child});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          color: CustomColor.backgroundColor,
        ),
        child: child,
      ),
    );
  }
}
