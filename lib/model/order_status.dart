import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:equatable/equatable.dart';

enum OrderStage {
  placed(TextStrings.orderPlaced),
  confirmed(TextStrings.orderConfirmed),
  shipped(TextStrings.orderShipped),
  delivery(TextStrings.outForDelivery),
  delivered(TextStrings.orderDelivered);

  final String id;

  const OrderStage(this.id);
}

class OrderStatus extends Equatable {
  final OrderStage orderStage;
  final DateTime? date;

  const OrderStatus({required this.orderStage, required this.date});

  @override
  List<Object?> get props => [orderStage, date];
}
