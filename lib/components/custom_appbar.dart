import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timework/core/theme/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.centerTitle = true,
    this.actions,
    this.leading,
    this.title,
    this.height = kToolbarHeight,
    this.radius = true,
  });

  final bool? centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final String? title;
  final double height;
  final bool radius;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: white,
      centerTitle: centerTitle,
      backgroundColor: primaryColor,
      actions: actions,
      leading: leading,
      title: Text(
        title ?? '',
        style: TextStyle(
          color: white,
          fontSize: 18.sp,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: radius
            ? const BorderRadius.vertical(bottom: Radius.circular(14))
            : BorderRadius.zero,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
