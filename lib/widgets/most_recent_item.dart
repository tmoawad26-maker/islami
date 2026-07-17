import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class MostRecentItem extends StatelessWidget {
  const MostRecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    print('Width of Screen = ${MediaQuery.sizeOf(context).width}');
    print('Height of Screen = ${MediaQuery.sizeOf(context).height}');
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.only(left: 17.0),
      width: width * .78,
      height: height * .41,
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
              Text('Al-Anbiya', style: AppTextStyles.textStyle24),
              SizedBox(height: height * .02),
              Text('الأنبياء', style: AppTextStyles.textStyle24),
              SizedBox(height: height * .02),
              Text(
                '112 Verses',
                style: AppTextStyles.textStyle14.copyWith(
                  color: AppColors.darkBrown,
                ),
              ),
            ],
          ),
          Image.asset(Assets.imagesQuranKareem)
        ],
      ),
    );
  }
}
