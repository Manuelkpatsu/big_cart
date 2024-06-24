import 'package:big_cart_app/screen/auth/login/login_screen.dart';
import 'package:big_cart_app/screen/auth/sign_up/sign_up_screen.dart';
import 'package:big_cart_app/screen/widget/auth_app_bar.dart';
import 'package:big_cart_app/screen/widget/auth_widget.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widget/create_account_button.dart';
import 'widget/google_button.dart';
import '../../widget/have_account_button.dart';
import 'widget/welcome_info_text.dart';
import 'widget/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/auth_welcome';

  const WelcomeScreen({super.key});

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
              ImageStrings.authWelcomeImage,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black26,
            ),
            AuthWidget(
              height: MediaQuery.of(context).size.height * 0.41,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                children: [
                  const WelcomeText(),
                  const WelcomeInfoText(),
                  const SizedBox(height: 25),
                  GoogleButton(onPressed: () {}),
                  const SizedBox(height: 10),
                  CreateAccountButton(
                    onPressed: () => HelperFunctions.navigateToScreen(
                      context: context,
                      routeName: SignUpScreen.routeName,
                    ),
                  ),
                  const SizedBox(height: 5),
                  HaveAccountButton(
                    onTap: () => HelperFunctions.navigateToScreen(
                      context: context,
                      routeName: LoginScreen.routeName,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
