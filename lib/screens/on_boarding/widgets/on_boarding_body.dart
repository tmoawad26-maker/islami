import 'package:flutter/material.dart';
import 'package:islami/screens/on_boarding/widgets/islami_page_view.dart';
import 'mosque_header_widget.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: .center,
      children: [
        Expanded(flex: 1,child: MosqueHeaderWidget(width: width)),
        SizedBox(height: .05 * height),
        Expanded(
          flex: 2,
          child: IslamiPageView()
        )
      ],
    );
  }
}


