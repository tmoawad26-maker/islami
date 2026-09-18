import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';

class SearchFieldSection extends StatelessWidget {
  const SearchFieldSection({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
    this.onChanged
  });
  final Widget? prefixIcon, suffixIcon;
  final String hintText;
  final ValueChanged<String?>? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.primaryColor,
      onChanged: onChanged,
      style: TextStyle(
        color: AppColors.white,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        border: buildInputBorder(),
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.darkWhite,
          fontSize: 16,
          fontWeight: .bold,
        ),
        enabledBorder: buildInputBorder(),
        focusedBorder: buildInputBorder(),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }

  OutlineInputBorder buildInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.primaryColor),
      );
  }

 
}
