import 'package:flutter/material.dart';
import 'package:islami/core/utils/app_routes.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/tabs/widgets/custom_sura_search.dart';

class SuraOrderListView extends StatelessWidget {
  const SuraOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.suraDetailsRoute,
              arguments: SuraModel.suraModelList[index],
            );
          },
          child: CustomSuraSearch(suraModel: SuraModel.suraModelList[index])
          );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
      itemCount: SuraModel.suraModelList.length,
    );
  }
}
