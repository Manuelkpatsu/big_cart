import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/screen/widget/text_input_field.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import 'widget/add_address_button.dart';

class AddAddressScreen extends StatefulWidget {
  static const routeName = '/add_address';

  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  final addressFormKey = GlobalKey<FormState>();
  final style = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    letterSpacing: 0.03,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.addAddress),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Form(
          key: addressFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInputField(
                hintText: TextStrings.name,
                prefixIcon: const Icon(Icons.account_circle_outlined),
                style: style,
              ),
              const SizedBox(height: 5),
              TextInputField(
                hintText: TextStrings.emailAddress,
                inputType: TextInputType.emailAddress,
                prefixIcon: const Icon(Icons.email_outlined),
                style: style,
              ),
              const SizedBox(height: 5),
              TextInputField(
                hintText: TextStrings.phoneNumber,
                inputType: TextInputType.phone,
                prefixIcon: const Icon(Icons.phone_outlined),
                style: style,
              ),
              const SizedBox(height: 5),
              TextInputField(
                hintText: TextStrings.address,
                prefixIcon: const Icon(Icons.location_on_outlined),
                style: style,
              ),
              const SizedBox(height: 5),
              TextInputField(
                hintText: TextStrings.zipCode,
                prefixIcon: const Icon(Icons.subtitles_outlined),
                style: style,
              ),
              const SizedBox(height: 5),
              TextInputField(
                hintText: TextStrings.city,
                prefixIcon: const Icon(Icons.map_outlined),
                style: style,
              ),
              const SizedBox(height: 5),
              TextInputField(
                hintText: TextStrings.country,
                prefixIcon: const Icon(Icons.language_rounded),
                suffixIcon: const Icon(Icons.arrow_drop_down, size: 18),
                style: style,
                onTap: () {
                  showCountryPicker(
                    context: context,
                    showPhoneCode: false,
                    favorite: ['GH'],
                    onSelect: (country) {},
                  );
                },
                readOnly: true,
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      bottomSheet: AddAddressButton(onPressed: () {}),
    );
  }
}
