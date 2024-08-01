import 'package:flutter/material.dart';

import 'screen/app/account/about_me/about_me_screen.dart';
import 'screen/app/account/account_screen.dart';
import 'screen/app/account/add_address/add_address_screen.dart';
import 'screen/app/account/my_address/my_address_screen.dart';
import 'screen/app/account/my_orders/my_orders_screen.dart';
import 'screen/app/account/notifications_settings/notifications_settings_screen.dart';
import 'screen/app/account/transactions/transactions_screen.dart';
import 'screen/app/app.dart';
import 'screen/app/home/home_screen.dart';
import 'screen/auth/forgot_password/forgot_password_screen.dart';
import 'screen/auth/login/login_screen.dart';
import 'screen/auth/onboard/onboard_screen.dart';
import 'screen/auth/phone_number/phone_number_screen.dart';
import 'screen/auth/sign_up/sign_up_screen.dart';
import 'screen/auth/verify_otp/verify_otp_screen.dart';
import 'screen/auth/welcome/welcome_screen.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case OnboardScreen.routeName:
        return MaterialPageRoute(builder: (_) => const OnboardScreen());
      case WelcomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case SignUpScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case ForgotPasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case PhoneNumberScreen.routeName:
        return MaterialPageRoute(builder: (_) => const PhoneNumberScreen());
      case VerifyOtpScreen.routeName:
        return MaterialPageRoute(builder: (_) => const VerifyOtpScreen());
      case App.routeName:
        return MaterialPageRoute(builder: (_) => const App());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AccountScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AccountScreen());
      case NotificationsSettingsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const NotificationsSettingsScreen());
      case AboutMeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AboutMeScreen());
      case TransactionsScreen.routeName:
        return MaterialPageRoute(builder: (_) => const TransactionsScreen());
      case MyAddressScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MyAddressScreen());
      case AddAddressScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AddAddressScreen());
      case MyOrdersScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MyOrdersScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        );
    }
  }
}
