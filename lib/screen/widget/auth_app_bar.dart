import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'back_icon_button.dart';

class AccountAppBar extends AppBar {
  final VoidCallback? onPressed;

  AccountAppBar({super.key, required this.onPressed})
      : super(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData().copyWith(color: Colors.white),
          title: const Text(
            'Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          foregroundColor: Colors.white,
          centerTitle: true,
          leading: BackIconButton(onPressed: onPressed),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        );
}
