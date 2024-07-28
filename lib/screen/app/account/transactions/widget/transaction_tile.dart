import 'package:big_cart_app/model/transaction.dart';
import 'package:big_cart_app/screen/widget/payment_type_image.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final Transaction transaction;
  final VoidCallback? onTap;

  const TransactionTile({super.key, required this.transaction, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            PaymentTypeImage(image: transaction.paymentType.imagePath),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.paymentType.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.03,
                    ),
                  ),
                  Text(
                    HelperFunctions.formatTransactionDate(transaction.transactionDate),
                    style: const TextStyle(fontSize: 10, letterSpacing: 0.03),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Text(
              '\$${transaction.amount.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: CustomColor.greenColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
