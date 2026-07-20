import 'package:flutter/material.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/tabs/widgets/most_recent_section.dart';

class MostRecentlyListView extends StatelessWidget {
  const MostRecentlyListView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height * .19,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: PageScrollPhysics(),
        itemBuilder: (context, index) {
          return MostRecentlySection(suraModel: SuraModel.suraModelList[index]);
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: 5,
      ),
    );
  }
}
