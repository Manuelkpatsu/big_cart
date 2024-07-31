import 'package:big_cart_app/model/address.dart';
import 'package:big_cart_app/screen/app/account/widget/animated_arrow_icon.dart';
import 'package:big_cart_app/screen/app/account/widget/default_text.dart';
import 'package:big_cart_app/screen/app/account/widget/make_default.dart';
import 'package:big_cart_app/screen/widget/circular_image.dart';
import 'package:big_cart_app/screen/widget/text_input_field.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import 'address_name_text.dart';
import 'address_phone_number_text.dart';
import 'complete_address_text.dart';

class MyAddressTile extends StatefulWidget {
  final Address address;
  final bool isDefault;
  final int defaultAddress;
  final bool initiallyExpanded;
  final void Function(int?)? onDefaultAddressChanged;
  final void Function(bool)? onExpansionChanged;

  const MyAddressTile({
    super.key,
    required this.address,
    required this.isDefault,
    required this.defaultAddress,
    required this.initiallyExpanded,
    required this.onDefaultAddressChanged,
    required this.onExpansionChanged,
  });

  @override
  State<MyAddressTile> createState() => _MyAddressTileState();
}

class _MyAddressTileState extends State<MyAddressTile> {
  final nameController = TextEditingController();
  final streetAddressController = TextEditingController();
  final cityController = TextEditingController();
  final zipCodeController = TextEditingController();
  final countryController = TextEditingController();
  final phoneNumberController = TextEditingController();

  @override
  void initState() {
    nameController.text = widget.address.name;
    streetAddressController.text = widget.address.streetAddress;
    cityController.text = widget.address.city;
    zipCodeController.text = widget.address.zipCode;
    countryController.text = widget.address.country;
    phoneNumberController.text = widget.address.phoneNumber;
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    streetAddressController.dispose();
    cityController.dispose();
    zipCodeController.dispose();
    countryController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 0.03,
    );

    return Stack(
      children: [
        ExpansionTile(
          childrenPadding: const EdgeInsets.only(top: 10, bottom: 20),
          tilePadding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 2),
          backgroundColor: Colors.white,
          collapsedBackgroundColor: Colors.white,
          shape: const Border(),
          initiallyExpanded: widget.initiallyExpanded,
          leading: const CircularImage(
            circleSize: 66,
            imageWidth: 24,
            imageHeight: 32,
            backgroundColor: CustomColor.primaryLightColor,
            image: 'assets/images/address-icon.png',
          ),
          title: AddressNameText(name: widget.address.name),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CompleteAddressText(completeAddress: widget.address.completeAddress()),
              AddressPhoneNumberText(phoneNumber: widget.address.phoneNumber),
            ],
          ),
          trailing: AnimatedArrowIcon(initiallyExpanded: widget.initiallyExpanded),
          onExpansionChanged: widget.onExpansionChanged,
          children: [
            const Divider(height: 0, color: CustomColor.borderColor),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextInputField(
                controller: nameController,
                hintText: TextStrings.name,
                prefixIcon: const Icon(Icons.account_circle_outlined, size: 18),
                fillColor: CustomColor.backgroundColor,
                style: style,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextInputField(
                controller: streetAddressController,
                hintText: TextStrings.address,
                prefixIcon: const Icon(Icons.location_on_outlined, size: 18),
                fillColor: CustomColor.backgroundColor,
                style: style,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextInputField(
                      controller: cityController,
                      hintText: TextStrings.city,
                      prefixIcon: const Icon(Icons.map_outlined, size: 18),
                      fillColor: CustomColor.backgroundColor,
                      style: style,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: TextInputField(
                      controller: zipCodeController,
                      hintText: TextStrings.zipCode,
                      prefixIcon: const Icon(Icons.subtitles_outlined, size: 18),
                      fillColor: CustomColor.backgroundColor,
                      style: style,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextInputField(
                controller: countryController,
                hintText: TextStrings.country,
                prefixIcon: const Icon(Icons.language_rounded, size: 18),
                suffixIcon: const Icon(Icons.arrow_drop_down, size: 18),
                fillColor: CustomColor.backgroundColor,
                style: style,
                onTap: () {
                  showCountryPicker(
                    context: context,
                    showPhoneCode: false,
                    favorite: ['GH'],
                    onSelect: (country) {
                      setState(() => countryController.text = country.countryCode);
                    },
                  );
                },
                readOnly: true,
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextInputField(
                controller: phoneNumberController,
                hintText: TextStrings.phoneNumber,
                inputType: TextInputType.phone,
                prefixIcon: const Icon(Icons.phone_outlined, size: 18),
                fillColor: CustomColor.backgroundColor,
                style: style,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MakeDefault(
                value: widget.address.id,
                groupValue: widget.defaultAddress,
                onChanged: widget.onDefaultAddressChanged,
                fillColor: WidgetStateProperty.resolveWith((states) {
                  return (widget.isDefault)
                      ? CustomColor.primaryDarkColor
                      : CustomColor.grayTextColor.withOpacity(0.7);
                }),
              ),
            ),
          ],
        ),
        widget.isDefault ? const DefaultText() : const SizedBox.shrink(),
      ],
    );
  }
}
