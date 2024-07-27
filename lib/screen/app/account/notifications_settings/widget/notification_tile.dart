import 'package:big_cart_app/screen/widget/app_switch.dart';
import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool value;
  final void Function(bool)? onChanged;

  const NotificationTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.03,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  subTitle,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.03,
                    color: CustomColor.grayTextColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          AppSwitch(value: value, onChanged: onChanged),
        ],
      ),
    );
  }
}
