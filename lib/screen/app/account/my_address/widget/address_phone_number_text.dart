import 'package:flutter/material.dart';

class AddressPhoneNumberText extends StatelessWidget {
  final String phoneNumber;

  const AddressPhoneNumberText({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Text(
      phoneNumber,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 10, letterSpacing: 0.03, fontWeight: FontWeight.w600),
    );
  }
}
