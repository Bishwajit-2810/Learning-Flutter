import 'package:flutter/material.dart';

class FavPro with ChangeNotifier {
  final List<int> _favList = [];
  List<int> get seclectedList => _favList;
  void addList(int index) {
    _favList.add(index);
    notifyListeners();
  }

  void rmList(int index) {
    _favList.remove(index);
    notifyListeners();
  }
}
