import 'package:flutter/material.dart';

import 'screen/auth/login/login_screen.dart';
import 'screen/auth/onboard/onboard_screen.dart';
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
