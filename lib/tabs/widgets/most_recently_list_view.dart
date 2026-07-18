import 'package:flutter/material.dart';
import 'package:islami/tabs/widgets/most_recently_section.dart';

class MostRecentlyListView extends StatelessWidget {
  const MostRecentlyListView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height * .2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: PageScrollPhysics(),
        itemBuilder: (context, index) {
          return MostRecentlySection();
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: 5,
      ),
    );
  }
}
