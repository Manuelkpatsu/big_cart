import 'package:big_cart_app/model/order.dart';
import 'package:big_cart_app/screen/app/account/my_orders/widget/order_status_date_text.dart';
import 'package:big_cart_app/screen/app/account/my_orders/widget/order_status_text.dart';
import 'package:big_cart_app/screen/app/account/my_orders/widget/pending_text.dart';
import 'package:big_cart_app/screen/app/account/widget/order_amount_text.dart';
import 'package:big_cart_app/screen/app/account/widget/order_items_text.dart';
import 'package:big_cart_app/screen/app/account/widget/order_number_text.dart';
import 'package:big_cart_app/screen/app/account/widget/order_placed_date_text.dart';
import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/screen/widget/circular_image.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TrackOrderScreen extends StatelessWidget {
  static const routeName = '/track_order';

  final Order order;

  const TrackOrderScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.trackOrder),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              color: Colors.white,
              child: Row(
                children: [
                  const CircularImage(
                    circleSize: 66,
                    imageWidth: 42,
                    imageHeight: 30,
                    backgroundColor: CustomColor.primaryLightColor,
                    image: ImageStrings.order,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OrderNumberText(id: order.orderId),
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
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 16, top: 15, bottom: 15),
              color: Colors.white,
              child: FixedTimeline.tileBuilder(
                theme: TimelineThemeData(nodePosition: 0),
                builder: TimelineTileBuilder.connected(
                  connectionDirection: ConnectionDirection.after,
                  itemCount: order.orderStatuses.length,
                  contentsBuilder: (_, index) {
                    final status = order.orderStatuses[index];

                    return Padding(
                      padding: const EdgeInsets.only(left: 10, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OrderStatusText(orderStatus: status.orderStage.id, fontSize: 13),
                          const SizedBox(height: 3),
                          status.date == null
                              ? const PendingText()
                              : OrderStatusDateText(date: status.date!, pattern: 'MMMM dd y'),
                          const SizedBox(height: 13),
                          const Divider(color: CustomColor.borderColor, thickness: 1, height: 0),
                        ],
                      ),
                    );
                  },
                  indicatorBuilder: (_, index) {
                    final status = order.orderStatuses[index];

                    return DotIndicator(
                      color: status.date == null
                          ? CustomColor.lightGrayBackgroundColor
                          : CustomColor.primaryLightColor,
                      size: 66,
                      child: Center(
                        child: Image.asset(
                          status.date == null
                              ? status.orderStage.icon
                              : status.orderStage.activeIcon,
                          width: 42,
                          height: 30,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                  connectorBuilder: (_, index, __) {
                    return const SolidLineConnector(
                      color: CustomColor.borderColor,
                      thickness: 1,
                      indent: 15,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
