//HERE YOU WILL CREATE YOUR PROVIDER CLASS INHERIT TO CHANGE NOTIFIER
//DONT FORGET TO ADD THE NOTIFY LISTENERS AT THE END OF YOUR FUNCTIONS

import 'package:flutter/material.dart';

class ThemeModeProvider extends ChangeNotifier {
  Color primaryColor = Colors.orange;
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;
  var iconFloatingElevation = Icon(Icons.mode_night);
  bool stateDay = true;

  void changeThemeToNight() {
    primaryColor = Colors.black;
    backgroundColor = Colors.grey;
    textColor = Colors.white;
    iconFloatingElevation = Icon(Icons.sunny);
    stateDay = false;
    notifyListeners();
  }

  void changeThemeToDay() {
    primaryColor = Colors.orange;
    backgroundColor = Colors.white;
    textColor = Colors.black;
    iconFloatingElevation = Icon(Icons.mode_night);
    stateDay = true;
    notifyListeners();
  }
}
