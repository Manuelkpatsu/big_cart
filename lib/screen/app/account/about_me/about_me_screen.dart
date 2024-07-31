import 'package:big_cart_app/screen/app/account/widget/save_settings_button.dart';
import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/screen/widget/password_input_field.dart';
import 'package:big_cart_app/screen/widget/text_input_field.dart';
import 'package:big_cart_app/screen/widget/title_text.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AboutMeScreen extends StatefulWidget {
  static const routeName = '/about_me';

  const AboutMeScreen({super.key});

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  final aboutMeFormKey = GlobalKey<FormState>();
  bool obscureCurrentPasswordText = true;
  bool obscureNewPasswordText = true;
  bool obscureConfirmNewPasswordText = true;
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
        title: const Text(TextStrings.aboutMe),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Form(
          key: aboutMeFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(title: TextStrings.personalDetails),
              const SizedBox(height: 10),
              TextInputField(
                initialValue: 'Russell Austin',
                hintText: TextStrings.fullName,
                prefixIcon: const Icon(Icons.account_circle_outlined),
                style: style,
              ),
              const SizedBox(height: 5),
              TextInputField(
                initialValue: 'russell.partner@gmail.com',
                hintText: TextStrings.emailAddress,
                inputType: TextInputType.emailAddress,
                prefixIcon: const Icon(Icons.email_outlined),
                style: style,
              ),
              const SizedBox(height: 5),
              TextInputField(
                initialValue: '+1 202 555 0142',
                hintText: TextStrings.phoneNumber,
                inputType: TextInputType.phone,
                prefixIcon: const Icon(Icons.phone),
                style: style,
              ),
              const SizedBox(height: 30),
              const TitleText(title: TextStrings.changePassword),
              const SizedBox(height: 10),
              PasswordInputField(
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                hintText: TextStrings.currentPassword,
                obscureText: obscureCurrentPasswordText,
                toggle: () {
                  setState(() => obscureCurrentPasswordText = !obscureCurrentPasswordText);
                },
                style: style,
              ),
              const SizedBox(height: 5),
              PasswordInputField(
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                hintText: TextStrings.newPassword,
                obscureText: obscureNewPasswordText,
                toggle: () {
                  setState(() => obscureNewPasswordText = !obscureNewPasswordText);
                },
                style: style,
              ),
              const SizedBox(height: 5),
              PasswordInputField(
                prefixIcon: const Icon(Icons.lock_outline_rounded),
                hintText: TextStrings.confirmNewPassword,
                obscureText: obscureConfirmNewPasswordText,
                toggle: () {
                  setState(() => obscureConfirmNewPasswordText = !obscureConfirmNewPasswordText);
                },
                style: style,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: SaveSettingsButton(onPressed: () {}),
    );
  }
}
