import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/image_strings.dart';
import 'package:big_cart_app/utils/constants/text_strings.dart';
import 'package:big_cart_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'about_me/about_me_screen.dart';
import 'my_address/my_address_screen.dart';
import 'my_cards/my_cards_screen.dart';
import 'my_orders/my_orders_screen.dart';
import 'notifications_settings/notifications_settings_screen.dart';
import 'transactions/transactions_screen.dart';
import 'widget/account_nav_tile.dart';
import 'widget/profile_avatar.dart';
import 'widget/profile_email_text.dart';
import 'widget/profile_name_text.dart';
import 'widget/update_image_button.dart';

class AccountScreen extends StatelessWidget {
  static const routeName = '/account';

  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double coverHeight = 145;
    const double profileHeight = 114;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: Colors.white,
                  height: coverHeight,
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: (profileHeight / 2) + 5),
                ),
                Positioned(
                  top: coverHeight - (profileHeight / 2),
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Stack(
                      children: [
                        const ProfileAvatar(
                          image: ImageStrings.profileImage,
                          radius: profileHeight / 2,
                        ),
                        UpdateImageButton(onPressed: () {}),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const ProfileNameText(name: 'Olivia Austin'),
                const ProfileEmailText(email: 'oliviaaustin@gmail.com'),
                const SizedBox(height: 20),
                AccountNavTile(
                  image: ImageStrings.aboutMe,
                  title: TextStrings.aboutMe,
                  onPressed: () => HelperFunctions.navigateToScreen(
                    context: context,
                    routeName: AboutMeScreen.routeName,
                  ),
                  trailing: const Icon(Icons.chevron_right, color: CustomColor.grayTextColor),
                ),
                AccountNavTile(
                  image: ImageStrings.myOrders,
                  title: TextStrings.myOrders,
                  onPressed: () => HelperFunctions.navigateToScreen(
                    context: context,
                    routeName: MyOrdersScreen.routeName,
                  ),
                  trailing: const Icon(Icons.chevron_right, color: CustomColor.grayTextColor),
                ),
                AccountNavTile(
                  image: ImageStrings.myFavorites,
                  title: TextStrings.myFavorites,
                  onPressed: () {},
                  trailing: const Icon(Icons.chevron_right, color: CustomColor.grayTextColor),
                ),
                AccountNavTile(
                  image: ImageStrings.myAddress,
                  title: TextStrings.myAddress,
                  onPressed: () => HelperFunctions.navigateToScreen(
                    context: context,
                    routeName: MyAddressScreen.routeName,
                  ),
                  trailing: const Icon(Icons.chevron_right, color: CustomColor.grayTextColor),
                ),
                AccountNavTile(
                  image: ImageStrings.creditCards,
                  title: TextStrings.creditCards,
                  onPressed: () => HelperFunctions.navigateToScreen(
                    context: context,
                    routeName: MyCardsScreen.routeName,
                  ),
                  trailing: const Icon(Icons.chevron_right, color: CustomColor.grayTextColor),
                ),
                AccountNavTile(
                  image: ImageStrings.transactions,
                  title: TextStrings.transactions,
                  onPressed: () => HelperFunctions.navigateToScreen(
                    context: context,
                    routeName: TransactionsScreen.routeName,
                  ),
                  trailing: const Icon(Icons.chevron_right, color: CustomColor.grayTextColor),
                ),
                AccountNavTile(
                  image: ImageStrings.notifications,
                  title: TextStrings.notifications,
                  onPressed: () => HelperFunctions.navigateToScreen(
                    context: context,
                    routeName: NotificationsSettingsScreen.routeName,
                  ),
                  trailing: const Icon(Icons.chevron_right, color: CustomColor.grayTextColor),
                ),
                AccountNavTile(
                  image: ImageStrings.signOut,
                  title: TextStrings.signOut,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
