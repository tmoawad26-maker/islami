import 'package:islami/core/resources/quran_resources.dart';

class SuraModel {
  final int index;
  final String suraArabic;
  final String suraEnglish;
  final String ayaNumber;

  SuraModel({
    required this.index,
    required this.suraArabic,
    required this.suraEnglish,
    required this.ayaNumber,
  });
  static List<SuraModel> suraModelList = List.generate(114, (
    index,
  ) {
    return SuraModel(
      index: index,
      suraArabic: QuranResources.surahNamesArabic[index],
      suraEnglish: QuranResources.surahNamesEnglish[index],
      ayaNumber: QuranResources.numberAyatQuran[index],
    );
  });
}
