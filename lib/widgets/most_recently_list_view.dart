import 'package:flutter/material.dart';
import 'package:islami/widgets/most_recently_section.dart';

class MostRecentlyListView extends StatelessWidget {
  const MostRecentlyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context , index) {
          return  MostRecentlySection();
      }, 
    separatorBuilder: (context, index) {
      return  SizedBox(width: 10,);
    },
     itemCount: 5);
  }
}