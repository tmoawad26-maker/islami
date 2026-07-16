import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/core/utils/app_text_styles.dart';

class MostRecentItem extends StatelessWidget {
  const MostRecentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 17.0),
      width: 283,
      height: 150,
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
              SizedBox(height: 17,),
              Text('Al-Anbiya', style: AppTextStyles.textStyle24),
              SizedBox(height: 10),
              Text('الأنبياء', style: AppTextStyles.textStyle24),
              SizedBox(height: 10),
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
