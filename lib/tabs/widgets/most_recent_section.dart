import 'package:flutter/material.dart';
import 'package:islami/core/resources/quran_resources.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class MostRecentlySection extends StatelessWidget {
  const MostRecentlySection({super.key, required this.index, required this.mostRecentList,});
    final int index;
    final  List<int> mostRecentList;
  @override
  Widget build(BuildContext context) {
    print('Width of Screen = ${MediaQuery.sizeOf(context).width}');
    print('Height of Screen = ${MediaQuery.sizeOf(context).height}');
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.only(left: 17.0),
      width: width * .78,
      height: height * .19,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: height *.02,),
              Text(QuranResources.surahNamesEnglish[mostRecentList[index]], style: AppTextStyles.textStyle24),
              SizedBox(height: height * .02),
              Text(QuranResources.surahNamesArabic[mostRecentList[index]], style: AppTextStyles.textStyle24),
              SizedBox(height: height * .02),
              Text(
                '${QuranResources.numberAyatQuran[mostRecentList[index]]} Verses',
                style: AppTextStyles.textStyle14.copyWith(
                  color: AppColors.darkBrown,
                ),
              ),
            ],
          ),
          Expanded(child: Image.asset(Assets.imagesQuranKareem))
        ],
      ),
    );
  }
}
