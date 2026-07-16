import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
  });
  final Widget? prefixIcon, suffixIcon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.white,
      style: TextStyle(
        color: AppColors.white,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        border: buildInputBorder(OutlineInputBorder()),
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.hintTextColor,
          fontSize: 16,
          fontWeight: .bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }

  InputBorder buildInputBorder(InputBorder inputBorder) {
    return inputBorder == OutlineInputBorder
        ? OutlineInputBorder()
        : UnderlineInputBorder();
  }
}
