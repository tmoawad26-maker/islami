import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_colors.dart';
import 'package:islami/core/utils/app_routes.dart';
import 'package:islami/core/utils/app_strings.dart';
import 'package:islami/screens/on_boarding/widgets/on_boarding_widget.dart';

import '../../../models/on_boarding_model.dart';

class IslamiPageView extends StatefulWidget {
  const IslamiPageView({super.key});

  @override
  State<IslamiPageView> createState() => _IslamiPageViewState();
}

class _IslamiPageViewState extends State<IslamiPageView> {
  int currentPage = 0;
  final PageController pageController = PageController();

  void _goToNextPage() {
    if (currentPage == OnBoardingModel.onBoardings.length - 1) {
      Navigator.of(context).pushReplacementNamed(AppRoutes.mainLayoutRoute);
      return;
    }

    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _goToPreviousPage() {
    if (currentPage == 0) return;

    pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      final pageIndex = pageController.page?.toInt() ?? 0;
      if (pageIndex != currentPage) {
        setState(() {
          currentPage = pageIndex;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return PageView.builder(
      controller: pageController,
      onPageChanged: (index) {
        setState(() {
          currentPage = index;
        });
      },
      itemBuilder: (context, index) {
        final isFirstPage = index == 0;
        final isLastPage = index == OnBoardingModel.onBoardings.length - 1;

        return OnBoardingWidget(
          height: height,
          widget: isFirstPage
              ? null
              : Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    AppStrings.back,
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
          controller: pageController,
          textButton: isLastPage ? AppStrings.finish : AppStrings.next,
          onBackTap: isFirstPage ? null : _goToPreviousPage,
          onNextTap: _goToNextPage,
          onBoardingModel: OnBoardingModel.onBoardings[index],
          width: width,
        );
      },
      itemCount: OnBoardingModel.onBoardings.length,
    );
  }
}
