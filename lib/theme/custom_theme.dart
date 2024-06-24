import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_color.dart';
import 'custom_themes/app_bar_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/text_field_theme.dart';

class CustomTheme {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: CustomColor.backgroundColor,
      primaryColor: CustomColor.primaryColor,
      canvasColor: Colors.transparent,
      appBarTheme: CartAppBarTheme.appBarTheme,
      textTheme: GoogleFonts.poppinsTextTheme(),
      inputDecorationTheme: TextFieldTheme.inputDecorationTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.elevatedButtonTheme,
    );
  }
}
