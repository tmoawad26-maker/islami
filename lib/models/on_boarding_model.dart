import 'package:islami/core/utils/app_assets.dart';
import 'package:islami/core/utils/app_strings.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
   required this.subTitle,
  });
  static List<OnBoardingModel> onBoardings = [
    OnBoardingModel(
      imagePath: AppAssets.imagesWelcome,
      title: AppStrings.welcome,
      subTitle: ''
    ),
    OnBoardingModel(
      imagePath: AppAssets.imagesKaaba,
      subTitle: AppStrings.subTitleOnBoarding2,
      title: AppStrings.welcomeToIslami,
    ),
    OnBoardingModel(
      imagePath: AppAssets.imagesQuran,
      subTitle: AppStrings.subTitleOnBoarding3,
      title: AppStrings.readingQuran,
    ),
    OnBoardingModel(
      imagePath: AppAssets.imagesBearish,
      subTitle: AppStrings.bearishDesc,
      title: AppStrings.bearish,
    ),
    OnBoardingModel(
      imagePath: AppAssets.imagesRadio,
      subTitle: AppStrings.radioDesc,
      title: AppStrings.holyRadio,
    ),
  ];
}
