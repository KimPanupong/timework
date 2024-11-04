import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:timework/components/custom_text.dart';
import 'package:timework/core/theme/theme.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.focusNode,
    this.onFieldSubmitted,
    required this.controller,
    required this.isPassword,
    required this.hintText,
    this.prefixIcon,
    this.onChanged,
    this.onPressed,
    this.onPressedXMark,
    this.onTap,
    this.isVisible,
    this.validator,
    this.radius = 6,
    this.suffixIcon,
    this.contentPadding = const EdgeInsets.all(10),
    this.enalbleBorderSide = const BorderSide(color: Color(0xFFDADADA)),
    this.focusedBorderSide = const BorderSide(color: primaryColor),
    this.filled = true,
    this.fillColor = Colors.white,
    this.maxLines = 1,
    this.minLines,
    this.keyboardType,
    this.readOnly = false,
    this.autofocus = false,
    this.headTitle,
  });

  final Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final double radius;
  final TextEditingController controller;
  final bool isPassword;
  final bool? isVisible;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final Function()? onPressed;
  final Function()? onPressedXMark;
  final Function()? onTap;
  final String? Function(String?)? validator;
  final EdgeInsets contentPadding;
  final BorderSide enalbleBorderSide;
  final BorderSide focusedBorderSide;
  final bool? filled;
  final Color? fillColor;
  final int? maxLines;
  final int? minLines;
  final TextInputType? keyboardType;
  final bool readOnly;
  final bool autofocus;
  final String? headTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (headTitle != null)
          CustomText(
            text: headTitle!,
            fontSize: 10,
            color: text800,
          ),
        const Gap(5),
        TextFormField(
          keyboardType: keyboardType,
          maxLines: maxLines,
          minLines: minLines,
          focusNode: focusNode,
          onTap: onTap,
          autofocus: autofocus,
          readOnly: readOnly,
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
          onChanged: onChanged,
          obscureText: isVisible ?? false,
          controller: controller,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w300,
            fontSize: 14.sp,
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius.r),
              borderSide: enalbleBorderSide,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius.r),
              borderSide: focusedBorderSide,
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius.r),
              ),
              borderSide: const BorderSide(color: Colors.red),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius.r),
              ),
              borderSide: const BorderSide(color: Colors.red),
            ),
            contentPadding: contentPadding,
            filled: filled,
            fillColor: fillColor,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
            prefixIcon: prefixIcon,
            suffixIcon: controller.text.isNotEmpty
                ? isPassword
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: onPressedXMark,
                            icon: const Icon(CupertinoIcons.xmark,
                                color: Colors.blue),
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: onPressed,
                            icon: isVisible ?? false
                                ? const Icon(CupertinoIcons.eye_slash_fill,
                                    color: Colors.blue)
                                : const Icon(CupertinoIcons.eye_fill,
                                    color: Colors.blue),
                          ),
                        ],
                      )
                    : readOnly
                        ? null
                        : IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: onPressedXMark,
                            icon: const Icon(CupertinoIcons.xmark,
                                color: Colors.blue),
                          )
                : null,
          ),
        ),
      ],
    );
  }
}
