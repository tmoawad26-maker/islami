import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.textButton,
    required this.onPressed,
  });

  final String textButton;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      width: width *.09,
      height: height*.03,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor:  AppColors.primaryColor,
        ),
        child: Text(
          textButton,
          style: AppTextStyles.textStyle16Bold
        ),
      ),
    );
  }
}
