import 'package:big_cart_app/model/category.dart';
import 'package:big_cart_app/screen/widget/category_image.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class HomeCategoryTile extends StatelessWidget {
  final Category category;
  final VoidCallback? onTap;

  const HomeCategoryTile({super.key, required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          customBorder: const CircleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: CategoryImage(imagePath: category.imagePath, color: category.color),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          category.name,
          style: const TextStyle(
            color: CustomColor.grayTextColor,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
