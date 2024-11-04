import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconText extends StatelessWidget {
  const IconText({
    super.key,
    required this.child,
    required this.icon,
    this.iconSize = 24.0,
    this.iconColor = const Color(0xFF06A6F1),
  });

  final Widget child;
  final IconData icon;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
        const Gap(15),
        child
      ],
    );
  }
}
