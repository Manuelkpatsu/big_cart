import 'package:big_cart_app/screen/auth/verify_otp/verify_otp_screen.dart';
import 'package:big_cart_app/screen/widget/next_button.dart';
import 'package:big_cart_app/screen/widget/verify_number_text.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'widget/phone_number_sub_title.dart';

class PhoneNumberScreen extends StatefulWidget {
  static const routeName = '/phone_number';

  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final _phoneNumberFormKey = GlobalKey<FormState>();
  final PhoneNumber _phoneNumber = PhoneNumber(isoCode: 'GH');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.backgroundColor,
        automaticallyImplyLeading: false,
        title: const Text(TextStrings.verifyNumberAppBarTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
        child: Form(
          key: _phoneNumberFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const VerifyNumberText(),
              const SizedBox(height: 7),
              const PhoneNumberSubTitleText(),
              const SizedBox(height: 30),
              InternationalPhoneNumberInput(
                onInputChanged: (number) {},
                initialValue: _phoneNumber,
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.DIALOG,
                  trailingSpace: true,
                  setSelectorButtonAsPrefixIcon: true,
                  leadingPadding: 20,
                ),
              ),
              const SizedBox(height: 10),
              NextButton(
                onPressed: () => HelperFunctions.navigateToScreen(
                  context: context,
                  routeName: VerifyOtpScreen.routeName,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
