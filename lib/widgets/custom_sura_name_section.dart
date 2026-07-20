import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class CustomSuraNameSection extends StatelessWidget {
  const CustomSuraNameSection({super.key, required this.suraArabic});

  final String suraArabic;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Image.asset(Assets.imagesLeftCorner),
        Text(
          suraArabic,
          style: AppTextStyles.textStyle24.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        Image.asset(Assets.imagesRightCorner),
      ],
    );
  }
}
