import 'package:flutter/material.dart';

import 'router.dart';
import 'screen/auth/onboard/onboard_screen.dart';
import 'theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Big Cart',
        theme: CustomTheme.theme,
        initialRoute: OnboardScreen.routeName,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
