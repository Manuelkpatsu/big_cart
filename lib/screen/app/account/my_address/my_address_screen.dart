import 'package:big_cart_app/screen/app/account/add_address/add_address_screen.dart';
import 'package:big_cart_app/screen/app/account/widget/save_settings_button.dart';
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
  List<bool> isExpandedStateList = List<bool>.generate(
    AppData.addresses.length,
    (int index) => false,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.myAddress),
        actions: [
          AddButton(
            onPressed: () => HelperFunctions.navigateToScreen(
              context: context,
              routeName: AddAddressScreen.routeName,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 100),
        itemCount: AppData.addresses.length,
        separatorBuilder: (_, __) => const SizedBox(height: 15),
        itemBuilder: (ctx, index) {
          final address = AppData.addresses[index];

          return MyAddressTile(
            address: address,
            initiallyExpanded: isExpandedStateList[index],
            isDefault: defaultAddress == address.id,
            defaultAddress: defaultAddress,
            onDefaultAddressChanged: (value) => setState(() => defaultAddress = value!),
            onExpansionChanged: (value) => setState(() => isExpandedStateList[index] = value),
          );
        },
      ),
      bottomSheet: SaveSettingsButton(onPressed: () {}),
    );
  }
}
