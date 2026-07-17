import 'package:flutter/material.dart';
import 'package:islami/widgets/custom_sura_search.dart';

class SuraOrderListView extends StatelessWidget {
  const SuraOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CustomSuraSearch();
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
      itemCount: 5,
    );
  }
}
