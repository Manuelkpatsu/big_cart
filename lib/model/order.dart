import 'package:equatable/equatable.dart';

import 'address.dart';
import 'order_status.dart';
import 'product.dart';

class Order extends Equatable {
  final int orderId;
  final int customerId;
  final List<Product> products;
  final Address shippingAddress;
  final String? trackingNumber;
  final List<OrderStatus> orderStatuses;
  final DateTime orderDate;
  final DateTime? deliveryDate;

  const Order({
    required this.orderId,
    required this.customerId,
    required this.products,
    required this.shippingAddress,
    required this.trackingNumber,
    required this.orderStatuses,
    required this.orderDate,
    required this.deliveryDate,
  });

  double totalAmount() {
    return products.fold(0, (previous, current) {
      return previous += ((1 - (current.discount / 100)) * current.amount) * current.cartQuantity;
    });
  }

  int totalItems() {
    return products.fold(0, (previous, current) => previous + current.cartQuantity);
  }

  @override
  List<Object?> get props => [
        orderId,
        customerId,
        products,
        shippingAddress,
        trackingNumber,
        orderStatuses,
        orderDate,
        deliveryDate,
      ];
}
