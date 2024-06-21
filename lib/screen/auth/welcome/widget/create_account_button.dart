import 'package:big_cart_app/screen/widget/gradient_button.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CreateAccountButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GradientButton(
      onPressed: onPressed,
      widget: const Row(
        children: [
          Icon(Icons.account_circle_outlined),
          Expanded(child: Text(TextStrings.createAccount, textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}
