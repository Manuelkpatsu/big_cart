import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  static String formatTransactionDate(DateTime transactionDate) {
    final date = DateFormat('MMM dd y').format(transactionDate);
    final time = DateFormat('hh:mm a').format(transactionDate).toLowerCase();

    return '$date at $time';
  }
}
