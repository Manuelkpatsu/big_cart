import 'package:big_cart_app/theme/custom_color.dart';
import 'package:big_cart_app/utils/constants/app_data.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class App extends StatefulWidget {
  static const routeName = '/main';

  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with TickerProviderStateMixin {
  late MotionTabBarController _motionTabBarController;

  @override
  void initState() {
    super.initState();

    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _motionTabBarController.index,
        children: AppData.screens,
      ),
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController,
        initialSelectedTab: AppData.bottomNavBarLabels.first,
        labels: AppData.bottomNavBarLabels,
        icons: AppData.bottomNavBarIcons,
        tabSize: 50,
        tabBarHeight: 60,
        tabIconColor: CustomColor.grayTextColor,
        tabIconSize: 22,
        tabIconSelectedSize: 25,
        tabSelectedColor: CustomColor.primaryDarkColor,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController.index = value;
          });
        },
      ),
    );
  }
}
