import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class CustomSuraOrderWidget extends StatelessWidget {
  const CustomSuraOrderWidget({super.key, required this.index, this.imageSize, this.padding});
      final int index;
      final double ? imageSize , padding;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageIcon(
          AssetImage(Assets.imagesAyatImage),
          color: AppColors.white,
          size: imageSize ?? 52,
        ),
        Padding(
          padding:  EdgeInsets.all(padding ?? 8.0),
          child: Text('$index', style: AppTextStyles.textStyle16),
        ),
      ],
    );
  }
}
