import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:equatable/equatable.dart';

enum OrderStage {
  placed(TextStrings.orderPlaced, ImageStrings.orderPlacedIcon, ImageStrings.activeOrderPlacedIcon),
  confirmed(
    TextStrings.orderConfirmed,
    ImageStrings.orderConfirmedIcon,
    ImageStrings.activeOrderConfirmedIcon,
  ),
  shipped(
    TextStrings.orderShipped,
    ImageStrings.orderShippedIcon,
    ImageStrings.activeOrderShippedIcon,
  ),
  delivery(
    TextStrings.outForDelivery,
    ImageStrings.outForDeliveryIcon,
    ImageStrings.activeOutForDeliveryIcon,
  ),
  delivered(
    TextStrings.orderDelivered,
    ImageStrings.orderDeliveredIcon,
    ImageStrings.activeOrderDeliveredIcon,
  );

  final String id;
  final String icon;
  final String activeIcon;

  const OrderStage(this.id, this.icon, this.activeIcon);
}

class OrderStatus extends Equatable {
  final OrderStage orderStage;
  final DateTime? date;

  const OrderStatus({required this.orderStage, required this.date});

  @override
  List<Object?> get props => [orderStage, date];
}
