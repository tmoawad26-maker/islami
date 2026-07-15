import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/models/tab_info_model.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  List<TabInfoModel> tabs = [
    TabInfoModel(
      iconPath: 'assets/icons/quran_ic.png',
      label: 'Quran ic',
      backgroundImage: 'assets/images/back_home_image.png',
      content: Container(),
    ),

    TabInfoModel(
      iconPath: 'assets/icons/headith.png',
      label: 'Hadith',
      backgroundImage: 'assets/images/back_home_image.png',
      content: Container(),
    ),
    TabInfoModel(
      iconPath: 'assets/icons/ic_sebha.png',
      label: 'Sebha',
      backgroundImage: 'assets/images/back_home_image.png',
      content: Container(),
    ),
    TabInfoModel(
      iconPath: 'assets/icons/radio.png',
      label: 'Radio',
      backgroundImage: 'assets/images/back_home_image.png',
      content: Container(),
    ),
    TabInfoModel(
      iconPath: 'assets/icons/time.png',
      label: 'Time',
      backgroundImage: 'assets/images/back_home_image.png',
      content: Container(),
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          backgroundColor: AppColors.primaryColor,
          indicatorColor: AppColors.darkBrown.withValues(alpha: .6),
          labelTextStyle: WidgetStatePropertyAll(
            TextStyle(color: AppColors.white),
          ),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: List.generate(
            tabs.length,
            (index) => NavigationDestination(
              icon: ImageIcon(AssetImage(tabs[index].iconPath)),
              label: tabs[index].label,
              selectedIcon: ImageIcon(
                AssetImage(tabs[index].iconPath),
                color: selectedIndex == index
                    ? AppColors.white
                    : AppColors.darkBrown,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
