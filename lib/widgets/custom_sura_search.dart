import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/widgets/custom_sura_order_widget.dart';

class CustomSuraSearch extends StatelessWidget {
  const CustomSuraSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomSuraOrderWidget(),
            SizedBox(width: 24,),
             Column(
            spacing: 8,
            children: [
              Text('Al-Fatiha',style: AppTextStyles.textStyle20,),
              Text('7 Verses ',style: AppTextStyles.textStyle14,),
            ],
          ),
          Spacer(),
          Text('الفاتحه',style: AppTextStyles.textStyle20,)
          ],
        ),
         Divider(color: AppColors.darkWhite,)
      ],
    );
  }
}


