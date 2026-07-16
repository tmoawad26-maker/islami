import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/widgets/custom_text_field.dart';

class SearchSuraSection extends StatelessWidget {
  const SearchSuraSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'Sura Name',
      prefixIcon: ImageIcon(
        AssetImage(Assets.iconsQuranIc),
        color: AppColors.primaryColor,
      ),
    );
  }
}
