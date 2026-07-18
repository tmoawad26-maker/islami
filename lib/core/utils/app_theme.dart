import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class AppTheme {
  static   ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.darkBrown,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBrown,
      iconTheme: IconThemeData(
        color: AppColors.primaryColor,
      ),
      centerTitle: true,
      titleTextStyle: AppTextStyles.textStyle20.copyWith(
        color: AppColors.primaryColor,
      ),
    ),
    scaffoldBackgroundColor: AppColors.darkBrown,
    fontFamily: 'Janna LT',
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.primaryColor,
      indicatorColor: AppColors.darkBrown.withValues(alpha: .6),
      labelTextStyle: WidgetStatePropertyAll(TextStyle(color: AppColors.white)),
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      iconTheme: WidgetStatePropertyAll(
        IconThemeData(color: AppColors.darkBrown),
      ),
    ),
  );
}
