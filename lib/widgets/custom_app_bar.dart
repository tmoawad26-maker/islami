import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.suraEnglish});
  final String suraEnglish;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(suraEnglish),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
