import 'package:big_cart_app/model/order.dart';
import 'package:big_cart_app/screen/app/account/widget/animated_arrow_icon.dart';
import 'package:big_cart_app/screen/app/account/widget/order_amount_text.dart';
import 'package:big_cart_app/screen/app/account/widget/order_items_text.dart';
import 'package:big_cart_app/screen/app/account/widget/order_number_text.dart';
import 'package:big_cart_app/screen/app/account/widget/order_placed_date_text.dart';
import 'package:big_cart_app/screen/widget/circular_image.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import 'order_status_date_text.dart';
import 'order_status_text.dart';
import 'pending_text.dart';

class OrderTile extends StatelessWidget {
  final Order order;
  final bool initiallyExpanded;
  final void Function(bool)? onExpansionChanged;
  final VoidCallback? onLongPress;

  const OrderTile({
    super.key,
    required this.order,
    required this.initiallyExpanded,
    required this.onExpansionChanged,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: onLongPress,
      child: ExpansionTile(
        tilePadding: const EdgeInsets.only(left: 16, right: 16, top: 10),
        childrenPadding: const EdgeInsets.only(top: 10, bottom: 16),
        backgroundColor: Colors.white,
        collapsedBackgroundColor: Colors.white,
        shape: const Border(),
        initiallyExpanded: initiallyExpanded,
        leading: const CircularImage(
          circleSize: 66,
          imageWidth: 42,
          imageHeight: 30,
          backgroundColor: CustomColor.primaryLightColor,
          image: ImageStrings.activeOrderPlacedIcon,
        ),
        title: OrderNumberText(id: order.orderId),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderPlacedDateText(date: order.orderDate),
            const SizedBox(height: 3),
            Row(
              children: [
                OrderItemsText(items: order.totalItems()),
                const SizedBox(width: 20),
                OrderAmountText(amount: order.totalAmount()),
              ],
            ),
          ],
        ),
        trailing: AnimatedArrowIcon(initiallyExpanded: initiallyExpanded),
        onExpansionChanged: onExpansionChanged,
        children: [
          const Divider(height: 0, color: CustomColor.borderColor),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FixedTimeline.tileBuilder(
              theme: TimelineThemeData(
                nodePosition: 0,
                indicatorTheme: const IndicatorThemeData(size: 20),
              ),
              builder: TimelineTileBuilder.connected(
                connectionDirection: ConnectionDirection.after,
                itemCount: order.orderStatuses.length,
                contentsBuilder: (_, index) {
                  final status = order.orderStatuses[index];

                  return Row(
                    children: [
                      OrderStatusText(orderStatus: status.orderStage.id),
                      const Spacer(),
                      status.date == null
                          ? const PendingText()
                          : OrderStatusDateText(date: status.date!),
                    ],
                  );
                },
                indicatorBuilder: (_, index) {
                  final status = order.orderStatuses[index];

                  return DotIndicator(
                    color: status.date == null
                        ? CustomColor.borderColor
                        : CustomColor.primaryDarkColor,
                    size: 10,
                  );
                },
                connectorBuilder: (_, index, __) {
                  final status = order.orderStatuses[index];

                  return SolidLineConnector(
                    color:
                        status.date == null ? CustomColor.backgroundColor : CustomColor.greenColor,
                    thickness: 1,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
