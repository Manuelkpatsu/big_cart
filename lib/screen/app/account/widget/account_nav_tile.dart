import 'package:flutter/material.dart';

class AccountNavTile extends StatelessWidget {
  final VoidCallback? onPressed;
  final String image;
  final Widget? trailing;
  final String title;

  const AccountNavTile({
    super.key,
    required this.onPressed,
    required this.image,
    this.trailing,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      onTap: onPressed,
      leading: Image.asset(image, width: 21, height: 21, fit: BoxFit.contain),
      title: Text(
        title,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, letterSpacing: 0.03),
      ),
      trailing: trailing,
    );
  }
}
