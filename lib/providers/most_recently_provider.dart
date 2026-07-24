import 'package:flutter/foundation.dart';
import 'package:islami/core/services/cached_data.dart';

class MostRecentlyProvider extends ChangeNotifier {
  ///data
  List<int> mostRecently = [];

  ///method
  Future<void> loadMostRecently() async {
    mostRecently = await CachedData.getMostRecentlyList();
    notifyListeners();
  }
}
