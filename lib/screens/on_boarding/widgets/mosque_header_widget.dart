import 'package:flutter/material.dart';

import '../../../core/utils/app_assets.dart';

class MosqueHeaderWidget extends StatelessWidget {
  const MosqueHeaderWidget({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: .center,
      children: [
        Image.asset(AppAssets.imagesMosque, fit: BoxFit.cover, width: width),
        Positioned(
          bottom: 0,
          top: 55,
          child: Align(
            alignment: .center,
            child: Image.asset(AppAssets.imagesIslami),
          ),
        ),
      ],
    );
  }
}
