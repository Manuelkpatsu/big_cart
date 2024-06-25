import 'package:big_cart_app/screen/auth/login/login_screen.dart';
import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/screen/widget/next_button.dart';
import 'package:big_cart_app/screen/widget/verify_number_text.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'widget/did_not_receive_code_text.dart';
import 'widget/resend_code_button.dart';
import 'widget/verify_otp_sub_title.dart';

class VerifyOtpScreen extends StatefulWidget {
  static const routeName = '/otp';

  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final _otpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.backgroundColor,
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.verifyNumberAppBarTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
        child: Form(
          key: _otpFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const VerifyNumberText(),
              const SizedBox(height: 7),
              const VerifyOtpSubTitleText(),
              const SizedBox(height: 50),
              PinCodeTextField(
                appContext: context,
                length: 6,
                backgroundColor: Colors.transparent,
                cursorColor: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                enableActiveFill: true,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  activeColor: Colors.white,
                  selectedColor: Colors.white,
                  inactiveColor: Colors.white,
                  errorBorderColor: CustomColor.redColor,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  inactiveBorderWidth: 0,
                  activeBorderWidth: 0,
                  selectedBorderWidth: 0,
                  errorBorderWidth: 1,
                  disabledBorderWidth: 0,
                  borderWidth: 0,
                  fieldWidth: 50,
                  fieldHeight: 55,
                ),
              ),
              NextButton(
                onPressed: () => HelperFunctions.navigateAndRemoveUntil(
                  context: context,
                  routeName: LoginScreen.routeName,
                ),
              ),
              const SizedBox(height: 10),
              const DidNotReceiveCodeText(),
              ResendCodeButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
