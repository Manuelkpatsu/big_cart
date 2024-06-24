import 'package:big_cart_app/screen/auth/login/login_screen.dart';
import 'package:big_cart_app/screen/widget/have_account_button.dart';
import 'package:big_cart_app/screen/widget/auth_app_bar.dart';
import 'package:big_cart_app/screen/widget/password_input_field.dart';
import 'package:big_cart_app/screen/widget/text_input_field.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widget/sign_up_button.dart';
import 'widget/sign_up_sub_title_text.dart';
import 'widget/sign_up_title_text.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signup';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _signUpFormKey = GlobalKey<FormState>();
  bool _obscureSignUpPasswordText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountAppBar(onPressed: () => HelperFunctions.popScreen(context)),
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(
              ImageStrings.signUpImage,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black26,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  color: CustomColor.backgroundColor,
                ),
                child: Form(
                  key: _signUpFormKey,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                    children: [
                      const SignUpTitleText(),
                      const SignUpSubTitleText(),
                      const SizedBox(height: 25),
                      const TextInputField(
                        labelText: TextStrings.emailAddress,
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      const SizedBox(height: 5),
                      const TextInputField(
                        labelText: TextStrings.phoneNumber,
                        inputType: TextInputType.phone,
                        inputAction: TextInputAction.next,
                        prefixIcon: Icon(Icons.phone),
                      ),
                      const SizedBox(height: 5),
                      PasswordInputField(
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        labelText: TextStrings.password,
                        inputAction: TextInputAction.done,
                        obscureText: _obscureSignUpPasswordText,
                        toggle: () {
                          setState(() => _obscureSignUpPasswordText = !_obscureSignUpPasswordText);
                        },
                      ),
                      const SizedBox(height: 10),
                      SignUpButton(onPressed: () {}),
                      const SizedBox(height: 5),
                      HaveAccountButton(
                        onTap: () => HelperFunctions.navigateToScreen(
                          context: context,
                          routeName: LoginScreen.routeName,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
