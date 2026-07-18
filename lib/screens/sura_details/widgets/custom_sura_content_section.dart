import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/core/widgets/custom_sura_order_widget.dart';

class CustomSuraContentSection extends StatefulWidget {
  const CustomSuraContentSection({super.key, required this.suras});

  final List<String> suras;

  @override
  State<CustomSuraContentSection> createState() =>
      _CustomSuraContentSectionState();
}

class _CustomSuraContentSectionState extends State<CustomSuraContentSection> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Visibility(
          visible: widget.suras.isNotEmpty,
          replacement: Center(
            child: CircularProgressIndicator(color: AppColors.primaryColor),
          ),
          child: Text.rich(
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            TextSpan(
              children: [
                for (int i = 0; i < widget.suras.length; i++) ...[
                  TextSpan(
                    text: widget.suras[i],
                    style: AppTextStyles.textStyle20.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  WidgetSpan(
                    child: CustomSuraOrderWidget(
                      index: i + 1,
                      imageSize: i + 1 < 3 ? 40 : 45,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
