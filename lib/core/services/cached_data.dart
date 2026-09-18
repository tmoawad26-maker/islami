import 'package:shared_preferences/shared_preferences.dart';

class CachedData {
  static const String mostRecentlyKey = 'most-recent';

  static Future<void> saveMostRecentlySura(int newIndex) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    List<String> mostRecentlyList;
    try {
      mostRecentlyList = sharedPreferences.getStringList(mostRecentlyKey) ?? [];
      print(mostRecentlyList);
    } catch (e) {
      // clears corrupted value left from the old buggy save call
      await sharedPreferences.remove(mostRecentlyKey);
      mostRecentlyList = [];
      print(mostRecentlyList);
    }

    /// add new index => reperesent new sura item clicked , insert into start
    /// rmove duplicate sura items
    if (mostRecentlyList.contains('$newIndex')) {
      mostRecentlyList.remove('$newIndex');
      mostRecentlyList.insert(0, '$newIndex');
    } else {
      mostRecentlyList.insert(0, '$newIndex');
    }
    if (mostRecentlyList.length > 5) {
      mostRecentlyList.removeLast(); // optional cap
    }

    await sharedPreferences.setStringList(mostRecentlyKey, mostRecentlyList);
  }

  static Future<List<int>> getMostRecentlyList() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    List<String> mostRecentlyAsString =
        sharedPreferences.getStringList(mostRecentlyKey) ?? [];
    List<int> mostRecentlyAsInt = mostRecentlyAsString
        .map((element) => int.parse(element))
        .toList();

    return mostRecentlyAsInt;
  }
}
