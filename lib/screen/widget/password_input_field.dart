import 'package:flutter/material.dart';

class PasswordInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String labelText;
  final bool obscureText;
  final VoidCallback? toggle;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fillColor;

  const PasswordInputField({
    super.key,
    this.controller,
    this.initialValue,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.labelText,
    this.obscureText = true,
    this.toggle,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.contentPadding,
    this.suffixIcon,
    this.prefixIcon,
    this.fillColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      onChanged: onChanged,
      cursorColor: Colors.black,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      decoration: const InputDecoration().copyWith(
        contentPadding: contentPadding,
        label: Text(labelText),
        suffixIcon: IconButton(
          icon: obscureText ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
          onPressed: toggle,
        ),
        prefixIcon: prefixIcon,
        fillColor: fillColor,
      ),
      keyboardType: inputType,
      textInputAction: inputAction,
      obscureText: obscureText,
      validator: validator,
      textCapitalization: textCapitalization,
    );
  }
}
