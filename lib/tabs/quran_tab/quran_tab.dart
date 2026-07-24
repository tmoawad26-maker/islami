import 'package:flutter/material.dart';
import 'package:islami/core/services/cached_data.dart';
import 'package:islami/core/utils/app_text_styles.dart';
import 'package:islami/providers/most_recently_provider.dart';
import 'package:islami/tabs/widgets/islami_logo_section.dart';
import 'package:islami/tabs/widgets/most_recently_list_view.dart';
import 'package:islami/tabs/widgets/search_sura_section.dart';
import 'package:islami/tabs/widgets/sura_order_list_view.dart';
import 'package:provider/provider.dart';
class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  late MostRecentlyProvider mostRecentlyProvider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => mostRecentlyProvider.loadMostRecently());
  }
 
  @override
  Widget build(BuildContext context) {
    // mostRecentlyProvider = context.watch<MostRecentlyProvider>();
    mostRecentlyProvider = Provider.of<MostRecentlyProvider>( context , listen: true);
   var width = MediaQuery.sizeOf(context).width;
   var height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width * .05),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            IslamiLogoSection(),
            SizedBox(height: 21),
            SearchSuraSection(),
            SizedBox(height: 20),
            Text('Most Recently', style: AppTextStyles.textStyle16),
            SizedBox(height: 10),
            MostRecentlyListView(mostRecent:  mostRecentlyProvider.mostRecently),
            SizedBox(height: 10,),
            Text('Suras List',style: AppTextStyles.textStyle16,),
            SuraOrderListView()
          ],
        ),
      ),
    );
  }
}

