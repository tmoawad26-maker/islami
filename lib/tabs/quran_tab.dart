import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/widgets/custom_text_field.dart';
import 'package:islami/widgets/islami_logo_section.dart';
import 'package:islami/widgets/search_sura_section.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});
    
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: .center,
        children: [
          IslamiLogoSection(),
          SizedBox(height: 21,),
          SearchSuraSection()
        ],
      ),
    );
  }
}



