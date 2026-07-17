import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
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
