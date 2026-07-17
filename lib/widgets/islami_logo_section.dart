import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_images.dart';

class IslamiLogoSection extends StatelessWidget {
  const IslamiLogoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.imagesIslamiLogo);
  }
}