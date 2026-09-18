import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../models/on_boarding_model.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({
    super.key,
    required this.controller,
    required this.width,
    this.widget,
    this.onBackTap,
    required this.onNextTap,
    required this.textButton,
  });
  final double width;
  final PageController controller;
  final Widget? widget;
  final VoidCallback? onBackTap;
  final VoidCallback onNextTap;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        if (widget != null)
          GestureDetector(
            onTap: onBackTap,
            child: widget!,
          )
        else
          const SizedBox(width: 56),
        const Spacer(),
        SmoothPageIndicator(
          controller: controller,
          effect: ExpandingDotsEffect(
            dotWidth: 7.0,
            dotHeight: 7.0,
            dotColor: AppColors.darkGray,
            activeDotColor: AppColors.primaryColor,
          ),
          count: OnBoardingModel.onBoardings.length,
        ),
        const Spacer(),
        GestureDetector(
          onTap: onNextTap,
          child: Padding(
            padding: EdgeInsets.only(right: width * .04),
            child: Text(
              textButton,
              style: AppTextStyles.textStyle16Bold.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
