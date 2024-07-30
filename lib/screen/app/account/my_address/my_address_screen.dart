import 'package:big_cart_app/screen/widget/add_button.dart';
import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/utils/constants/app_data.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widget/my_address_tile.dart';

class MyAddressScreen extends StatefulWidget {
  static const routeName = '/my_address';

  const MyAddressScreen({super.key});

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
  int defaultAddress = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.myAddress),
        actions: [AddButton(onPressed: () {})],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        itemCount: AppData.addresses.length,
        separatorBuilder: (_, __) => const SizedBox(height: 15),
        itemBuilder: (ctx, index) {
          final address = AppData.addresses[index];

          return MyAddressTile(
            address: address,
            isDefault: defaultAddress == address.id,
            defaultAddress: defaultAddress,
            onDefaultAddressChanged: (value) => setState(() => defaultAddress = value!),
          );
        },
      ),
    );
  }
}
