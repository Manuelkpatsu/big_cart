import 'package:big_cart_app/theme/custom_color.dart';
import 'package:flutter/cupertino.dart';

class AppSwitch extends StatelessWidget {
  final bool value;
  final void Function(bool)? onChanged;
  final AlignmentGeometry? alignment;

  const AppSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.alignment = Alignment.centerRight,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.65,
      alignment: alignment,
      child: CupertinoSwitch(
        value: value,
        activeColor: CustomColor.primaryDarkColor,
        trackColor: CustomColor.grayTextColor.withOpacity(0.3),
        onChanged: onChanged,
      ),
    );
  }
}
