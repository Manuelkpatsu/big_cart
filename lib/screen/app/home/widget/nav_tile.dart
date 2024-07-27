import 'package:big_cart_app/screen/widget/title_text.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class NavTile extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;

  const NavTile({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleText(title: title),
            const Icon(Icons.chevron_right, color: CustomColor.grayTextColor),
          ],
        ),
      ),
    );
  }
}
