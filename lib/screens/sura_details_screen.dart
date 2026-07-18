import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/utils/app_images.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/screens/sura_details/widgets/custom_sura_content_section.dart';
import 'package:islami/widgets/custom_app_bar.dart';
import 'package:islami/widgets/custom_sura_name_section.dart';

class SuraDetailsScreen extends StatefulWidget {
  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  
    late SuraModel suraData;
     List<String> suras = [];
    @override
  void initState() {
    super.initState();
      WidgetsBinding.instance.addPostFrameCallback((_) => readSuraFile(suraData.index));
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
     suraData = ModalRoute.of(context)!.settings.arguments as SuraModel;
    return Scaffold(
      appBar: CustomAppBar(suraEnglish: suraData.suraEnglish),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .02),
            child: Column(
              children: [
                CustomSuraNameSection(suraArabic: suraData.suraArabic,),
                SizedBox(height: height * .04),
                CustomSuraContentSection(suras: suras),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,

            child: Align(
              alignment: .bottomCenter,
              child: Image.asset(Assets.imagesMsque),
            ),
          ),
        ],
      ),
    );
      
  }
  Future<void> readSuraFile(int index) async {
   await  Future.delayed(Duration(seconds: 2));
    String suraLoad = await  rootBundle.loadString('assets/files/Suras/${index+1}.txt');
     List<String> suraContent =  suraLoad.trim().split("\n");    
    setState(() {
       suras = suraContent;
    });
  }
}

