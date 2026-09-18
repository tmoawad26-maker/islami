import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_text_styles.dart';

class NavigateToPageWidget extends StatelessWidget {
  const NavigateToPageWidget({
    super.key,
    required this.pageController,
    this.textButton, required this.onTap,
  });

  final PageController pageController;
  final String? textButton;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        textButton ?? AppStrings.next,
        style: AppTextStyles.textStyle16Bold.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
