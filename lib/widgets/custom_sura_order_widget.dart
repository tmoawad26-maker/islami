import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class CustomSuraOrderWidget extends StatelessWidget {
  const CustomSuraOrderWidget({super.key, required this.index});
      final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageIcon(
          AssetImage(Assets.imagesAyatImage),
          color: AppColors.white,
          size: 52,
        ),
        Text('$index', style: AppTextStyles.textStyle16),
      ],
    );
  }
}
