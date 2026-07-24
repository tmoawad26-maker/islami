import 'package:flutter/material.dart';
import 'package:islami/tabs/widgets/most_recent_section.dart';

class MostRecentlyListView extends StatelessWidget {
  const MostRecentlyListView({super.key, required this.mostRecent});
  final List<int> mostRecent;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;

    return Visibility(
      visible: mostRecent.isNotEmpty,
      replacement: Text('No most recent sura item'),
      child: SizedBox(
        height: height * .19,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: PageScrollPhysics(),
          itemBuilder: (context, index) {
            return MostRecentlySection(
              index: index,
              mostRecentList: mostRecent,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 10);
          },
          itemCount: mostRecent.length,
        ),
      ),
    );
  }
}
