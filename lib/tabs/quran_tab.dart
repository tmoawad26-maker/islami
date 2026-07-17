import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/widgets/islami_logo_section.dart';
import 'package:islami/widgets/most_recently_list_view.dart';
import 'package:islami/widgets/search_sura_section.dart';
import 'package:islami/widgets/sura_order_list_view.dart';
class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
   var width = MediaQuery.sizeOf(context).width;
   var height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width * .05),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            IslamiLogoSection(),
            SizedBox(height: 21),
            SearchSuraSection(),
            SizedBox(height: 20),
            Text('Most Recently', style: AppTextStyles.textStyle16),
            SizedBox(height: 10),
            MostRecentlyListView(),
            SizedBox(height: 10,),
            Text('Suras List',style: AppTextStyles.textStyle16,),
            SuraOrderListView()
          ],
        ),
      ),
    );
  }
}

