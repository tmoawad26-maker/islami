import 'package:flutter/material.dart';

class TabInfoModel {
  final String iconPath;
  final String label;
  final String backgroundImage;
  final Widget content;

  TabInfoModel({
    required this.iconPath,
    required this.label,
    required this.backgroundImage,
    required this.content,
  });
}
