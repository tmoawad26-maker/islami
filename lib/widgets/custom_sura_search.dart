import 'package:flutter/material.dart';
import 'package:islami/core/resources/quran_resources.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/widgets/custom_sura_order_widget.dart';

class CustomSuraSearch extends StatelessWidget {
  const CustomSuraSearch({super.key, required this.suraModel});
    final SuraModel suraModel;
     
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomSuraOrderWidget(index: suraModel.index + 1),
            SizedBox(width: 24,),
             Column(
            spacing: 8,
            children: [
              Text(suraModel.suraEnglish,style: AppTextStyles.textStyle20,),
              Text('${suraModel.ayaNumber} Verses ',style: AppTextStyles.textStyle14,),
            ],
          ),
          Spacer(),
          Text(suraModel.suraArabic,style: AppTextStyles.textStyle20,)
          ],
        ),
         Divider(color: AppColors.darkWhite,)
      ],
    );
  }
}


