import 'package:big_cart_app/screen/app/account/track_order/track_order_screen.dart';
import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/utils/constants/app_data.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widget/order_tile.dart';

class MyOrdersScreen extends StatefulWidget {
  static const routeName = '/my_orders';

  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  List<bool> isExpandedStateList = List<bool>.generate(AppData.orders.length, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.myOrders),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        itemCount: AppData.orders.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (ctx, index) {
          final order = AppData.orders[index];

          return OrderTile(
            onLongPress: () => HelperFunctions.navigateToScreen(
              context: context,
              routeName: TrackOrderScreen.routeName,
              arguments: order,
            ),
            order: order,
            initiallyExpanded: isExpandedStateList[index],
            onExpansionChanged: (value) => setState(() => isExpandedStateList[index] = value),
          );
        },
      ),
    );
  }
}
