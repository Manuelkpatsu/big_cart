import 'package:flutter/material.dart';

class HelperFunctions {
  HelperFunctions._();

  static void navigateToScreen({required BuildContext context, required String routeName}) {
    Navigator.of(context).pushNamed(routeName);
  }

  static void popScreen(BuildContext context) {
    Navigator.of(context).maybePop();
  }
}
