import 'package:equatable/equatable.dart';

import 'payment_type.dart';

class Transaction extends Equatable {
  final int id;
  final PaymentType paymentType;
  final DateTime transactionDate;
  final double amount;

  const Transaction({
    required this.id,
    required this.paymentType,
    required this.transactionDate,
    required this.amount,
  });

  @override
  List<Object?> get props => [id, paymentType, transactionDate, amount];
}
