import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/cupertino.dart';

class AppSwitch extends StatelessWidget {
  final bool value;
  final void Function(bool)? onChanged;

  const AppSwitch({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.65,
      child: CupertinoSwitch(
        value: value,
        activeColor: CustomColor.primaryDarkColor,
        trackColor: CustomColor.grayTextColor,
        onChanged: onChanged,
      ),
    );
  }
}
