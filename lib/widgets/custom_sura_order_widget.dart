import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class CustomSuraOrderWidget extends StatelessWidget {
  const CustomSuraOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageIcon(
          AssetImage(Assets.imagesAyatImage),
          color: AppColors.white,
          size: 50,
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Align(
            alignment: .center,
            child: Text('1', style: AppTextStyles.textStyle20),
          ),
        ),
      ],
    );
  }
}
