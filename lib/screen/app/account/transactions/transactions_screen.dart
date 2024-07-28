import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/utils/constants/app_data.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widget/transaction_tile.dart';

class TransactionsScreen extends StatelessWidget {
  static const routeName = '/transactions';

  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.transactions),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        itemCount: AppData.transactions.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (ctx, index) {
          final transaction = AppData.transactions[index];

          return TransactionTile(transaction: transaction, onTap: () {});
        },
      ),
    );
  }
}
