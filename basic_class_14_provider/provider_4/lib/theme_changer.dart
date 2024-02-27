import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  var _themeData = ThemeMode.light;
  ThemeMode get themeMode => _themeData;

  void setTheme(themeMode) {
    _themeData = themeMode;
    notifyListeners();
  }
}
