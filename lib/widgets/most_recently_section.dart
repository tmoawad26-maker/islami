import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/widgets/most_recent_item.dart';

class  MostRecentlySection extends StatelessWidget {
  const  MostRecentlySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        MostRecentItem(),
      ],
    );
  }
}
