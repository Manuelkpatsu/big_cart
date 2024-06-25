import 'package:flutter/material.dart';

class HelperFunctions {
  HelperFunctions._();

  static void navigateToScreen({required BuildContext context, required String routeName}) {
    Navigator.of(context).pushNamed(routeName);
  }

  static void navigateAndRemoveUntil({
    required BuildContext context,
    required String routeName,
  }) {
    Navigator.of(context).pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);
  }

  static void popScreen(BuildContext context) {
    Navigator.of(context).maybePop();
  }
}
