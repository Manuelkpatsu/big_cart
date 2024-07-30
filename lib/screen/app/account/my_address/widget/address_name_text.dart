import 'package:flutter/material.dart';

class AddressNameText extends StatelessWidget {
  final String name;

  const AddressNameText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, letterSpacing: 0.03),
    );
  }
}
