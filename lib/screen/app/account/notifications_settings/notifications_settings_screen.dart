import 'package:big_cart_app/screen/app/account/widget/save_settings_button.dart';
import 'package:big_cart_app/screen/widget/back_icon_button.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'widget/notification_tile.dart';

class NotificationsSettingsScreen extends StatelessWidget {
  static const routeName = '/notifications_settings';

  const NotificationsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(onPressed: () => HelperFunctions.popScreen(context)),
        title: const Text(TextStrings.notifications),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          children: [
            NotificationTile(
              title: TextStrings.allowNotifications,
              subTitle: TextStrings.notificationsSubTitle,
              value: true,
              onChanged: (value) {},
            ),
            NotificationTile(
              title: TextStrings.emailNotifications,
              subTitle: TextStrings.notificationsSubTitle,
              value: false,
              onChanged: (value) {},
            ),
            NotificationTile(
              title: TextStrings.orderNotifications,
              subTitle: TextStrings.notificationsSubTitle,
              value: false,
              onChanged: (value) {},
            ),
            NotificationTile(
              title: TextStrings.generalNotifications,
              subTitle: TextStrings.notificationsSubTitle,
              value: true,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
      bottomSheet: SaveSettingsButton(onPressed: () {}),
    );
  }
}
