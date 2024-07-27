import 'package:big_cart_app/screen/app/app.dart';
import 'package:big_cart_app/screen/auth/forgot_password/forgot_password_screen.dart';
import 'package:big_cart_app/screen/auth/sign_up/sign_up_screen.dart';
import 'package:big_cart_app/screen/widget/app_switch.dart';
import 'package:big_cart_app/screen/widget/auth_app_bar.dart';
import 'package:big_cart_app/screen/widget/auth_widget.dart';
import 'package:big_cart_app/screen/widget/password_input_field.dart';
import 'package:big_cart_app/screen/widget/text_input_field.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widget/forgot_password_button.dart';
import 'widget/login_button.dart';
import 'widget/login_sub_title_text.dart';
import 'widget/no_account_button.dart';
import 'widget/welcome_back_text.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  bool _obscureLoginPasswordText = true;
  bool _isChecked = false;

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
              ImageStrings.loginImage,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black26,
            ),
            AuthWidget(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Form(
                key: _loginFormKey,
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  children: [
                    const WelcomeBackText(),
                    const LoginSubTitleText(),
                    const SizedBox(height: 25),
                    const TextInputField(
                      labelText: TextStrings.emailAddress,
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    const SizedBox(height: 5),
                    PasswordInputField(
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      labelText: TextStrings.password,
                      inputAction: TextInputAction.done,
                      obscureText: _obscureLoginPasswordText,
                      toggle: () {
                        setState(() => _obscureLoginPasswordText = !_obscureLoginPasswordText);
                      },
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        AppSwitch(
                          value: _isChecked,
                          alignment: Alignment.center,
                          onChanged: (value) {
                            setState(() => _isChecked = value);
                          },
                        ),
                        const Text(TextStrings.rememberMe),
                        const Spacer(),
                        ForgotPasswordButton(
                          onPressed: () => HelperFunctions.navigateToScreen(
                            context: context,
                            routeName: ForgotPasswordScreen.routeName,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    LoginButton(
                      onPressed: () => HelperFunctions.navigateAndRemoveUntil(
                        context: context,
                        routeName: App.routeName,
                      ),
                    ),
                    const SizedBox(height: 5),
                    NoAccountButton(
                      onTap: () => HelperFunctions.navigateToScreen(
                        context: context,
                        routeName: SignUpScreen.routeName,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
