import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class UpdateImageButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const UpdateImageButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 5,
      child: CircleAvatar(
        radius: 12,
        child: RawMaterialButton(
          shape: const CircleBorder(),
          elevation: 1,
          clipBehavior: Clip.hardEdge,
          onPressed: onPressed,
          fillColor: CustomColor.greenColor,
          child: const Icon(Icons.camera_alt_rounded, color: Colors.white, size: 13),
        ),
      ),
    );
  }
}
