import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/widgets/islami_logo_section.dart';
import 'package:islami/widgets/most_recently_list_view.dart';
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
          SizedBox(height: 21),
          SearchSuraSection(),
          SizedBox(height: 20),
          Align(
            alignment: .topLeft,
            child: Text('Most Recently', style: AppTextStyles.textStyle16),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Align(alignment: .topLeft, child: MostRecentlyListView()),
          ),
        ],
      ),
    );
  }
}
