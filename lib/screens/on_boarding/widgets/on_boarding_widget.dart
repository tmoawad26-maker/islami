import 'package:flutter/material.dart';
import 'package:islami/models/on_boarding_model.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';
import 'navigation_widget.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.height,
    required this.controller,
    required this.width,
    required this.onBoardingModel,
    this.widget,
    required this.textButton,
    this.onBackTap,
    required this.onNextTap,
  });
  final double height, width;
  final PageController controller;
  final OnBoardingModel onBoardingModel;
  final Widget? widget;
  final String textButton;
  final VoidCallback? onBackTap;
  final VoidCallback onNextTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        Image.asset(onBoardingModel.imagePath,
            fit: BoxFit.cover, width: width,height: .4*height,),
        SizedBox(height: .05 * height),
        Text(
          onBoardingModel.title,
          style: AppTextStyles.textStyle24.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Text(
            onBoardingModel.subTitle,
            style: AppTextStyles.textStyle16Bold.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
        const Spacer(),
        NavigationWidget(
          controller: controller,
          textButton: textButton,
          widget: widget,
          onBackTap: onBackTap,
          onNextTap: onNextTap,
          width: width,
        ),
        SizedBox(height: height * .02),
      ],
    );
  }
}
