import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_routes.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/core/utils/app_theme.dart';
import 'package:islami/screens/main_layout.dart';
import 'package:islami/screens/sura_details_screen.dart';

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Islami App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.darkBrown,
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
      ),
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        AppRoutes.mainLayoutRoute : (_) => MainLayout(),
        AppRoutes.suraDetailsRoute : (_) => SuraDetailsScreen()
      },
      initialRoute: AppRoutes.mainLayoutRoute,
    );
  }
}