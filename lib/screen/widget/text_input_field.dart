import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function(String)? onChanged;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final Iterable<String>? autofillHints;
  final void Function()? onTap;
  final void Function(String?)? onSaved;
  final bool autofocus;
  final EdgeInsetsGeometry? contentPadding;
  final bool? enabled;
  final bool readOnly;
  final void Function(String)? onFieldSubmitted;
  final Color? fillColor;

  const TextInputField({
    super.key,
    this.controller,
    this.initialValue,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.maxLines,
    this.inputFormatters,
    this.autofillHints,
    this.onTap,
    this.onSaved,
    this.autofocus = false,
    this.contentPadding,
    this.enabled,
    this.readOnly = false,
    this.onFieldSubmitted,
    this.fillColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      controller: controller,
      initialValue: initialValue,
      cursorColor: Colors.black,
      onChanged: onChanged,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      inputFormatters: inputFormatters,
      autofillHints: autofillHints,
      onTap: onTap,
      onSaved: onSaved,
      enabled: enabled,
      readOnly: readOnly,
      onFieldSubmitted: onFieldSubmitted,
      decoration: const InputDecoration().copyWith(
        contentPadding: contentPadding,
        label: Text(labelText),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
      ),
      keyboardType: inputType,
      textInputAction: inputAction,
      validator: validator,
      textCapitalization: textCapitalization,
      maxLines: maxLines,
    );
  }
}
