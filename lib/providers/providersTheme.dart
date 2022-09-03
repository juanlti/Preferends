import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData currentTheme;

  //initialize ThemeData
  ThemeProvider({required bool isDarkMode}) {
    //isDarkMode ? currentTheme = ThemeData.dark() : ThemeData.light();
    if (isDarkMode) {
      currentTheme = ThemeData.dark();
    } else {
      currentTheme = ThemeData.light();
    }
  }

  void setLightMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  void setDarkMode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
