import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/models/tab_info_model.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  List<TabInfoModel> tabs = [
    TabInfoModel(
      iconPath: Assets.iconsQuranIc,
      label: 'Quran ic',
      backgroundImage: Assets.imagesBackHomeImage,
      content: Container(),
    ),

    TabInfoModel(
      iconPath: Assets.iconsHeadith,
      label: 'Hadith',
      backgroundImage: Assets.imagesBackHomeImage,
      content: Container(),
    ),
    TabInfoModel(
      iconPath: Assets.iconsIcSebha,
      label: 'Sebha',
      backgroundImage: Assets.imagesBackHomeImage,
      content: Container(),
    ),
    TabInfoModel(
      iconPath: Assets.iconsRadio,
      label: 'Radio',
      backgroundImage: Assets.imagesBackHomeImage,
      content: Container(),
    ),
    TabInfoModel(
      iconPath: Assets.iconsTime,
      label: 'Time',
      backgroundImage: Assets.imagesBackHomeImage,
      content: Container(),
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        body: Image.asset(tabs[selectedIndex].backgroundImage,fit: BoxFit.cover,
          width: double.infinity,
        ),
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
