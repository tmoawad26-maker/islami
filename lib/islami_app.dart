import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_routes.dart';
import 'package:islami/core/utils/app_theme.dart';
import 'package:islami/screens/main_layout.dart';

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Islami App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        AppRoutes.mainLayoutRoute : (_) => MainLayout(),
      },
      initialRoute: AppRoutes.mainLayoutRoute,
    );
  }
}