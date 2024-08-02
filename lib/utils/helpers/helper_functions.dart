import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HelperFunctions {
  HelperFunctions._();

  static void navigateToScreen({
    required BuildContext context,
    required String routeName,
    Object? arguments,
  }) {
    Navigator.of(context).pushNamed(routeName, arguments: arguments);
  }

  static void navigateAndRemoveUntil({
    required BuildContext context,
    required String routeName,
    Object? arguments,
  }) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      routeName,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  static void popScreen(BuildContext context) {
    Navigator.of(context).maybePop();
  }

  static String formatTransactionDate(DateTime transactionDate) {
    final date = DateFormat('MMM dd y').format(transactionDate);
    final time = DateFormat('hh:mm a').format(transactionDate).toLowerCase();

    return '$date at $time';
  }

  static String formatDate({required DateTime date, required String pattern}) {
    return DateFormat(pattern).format(date);
  }
}
