import 'package:flutter/material.dart';
import 'package:islami/core/services/cached_data.dart';
import 'package:islami/core/utils/app_routes.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/providers/most_recently_provider.dart';
import 'package:islami/tabs/widgets/custom_sura_search.dart';
import 'package:provider/provider.dart';

class SuraOrderListView extends StatelessWidget {
  const SuraOrderListView({super.key});
  @override
  Widget build(BuildContext context) {
    final mostRecentProvider = context.read<MostRecentlyProvider>();
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: ()  async {
            CachedData.saveMostRecentlySura(SuraModel.suraModelList[index].index);
            await Navigator.of(context).pushNamed(
              AppRoutes.suraDetailsRoute,
              arguments: SuraModel.suraModelList[index],
            );
            mostRecentProvider.loadMostRecently();
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
