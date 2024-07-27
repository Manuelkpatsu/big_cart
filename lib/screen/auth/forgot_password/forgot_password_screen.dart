import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/screen/widget/text_input_field.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widget/forgot_password_sub_title.dart';
import 'widget/forgot_password_title.dart';
import 'widget/send_link_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const routeName = '/forgot_password';

  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.backgroundColor,
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.forgotPasswordAppBarTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ForgotPasswordTitleText(),
            const SizedBox(height: 7),
            const ForgotPasswordSubTitleText(),
            const SizedBox(height: 30),
            const TextInputField(
              hintText: TextStrings.emailAddress,
              inputType: TextInputType.emailAddress,
              inputAction: TextInputAction.done,
              prefixIcon: Icon(Icons.email_outlined),
            ),
            const SizedBox(height: 10),
            SendLinkButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
