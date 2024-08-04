import 'package:big_cart_app/screen/app/account/add_credit_card/add_credit_card_screen.dart';
import 'package:big_cart_app/screen/widget/add_button.dart';
import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyCardsScreen extends StatelessWidget {
  static const routeName = '/my_cards';

  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.myCards),
        actions: [
          AddButton(
            onPressed: () => HelperFunctions.navigateToScreen(
              context: context,
              routeName: AddCreditCardScreen.routeName,
            ),
          ),
        ],
      ),
      body: const Center(child: Text(TextStrings.myCards)),
    );
  }
}
