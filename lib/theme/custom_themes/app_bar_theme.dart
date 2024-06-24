import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CartAppBarTheme {
  CartAppBarTheme._();

  static const appBarTheme = AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
  );
}
