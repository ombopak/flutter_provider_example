import 'package:flutter/material.dart';

class GenderProvider with ChangeNotifier {
  bool _isMale = true;

  //getter for _isMale
  bool get isMale => _isMale;

  //setter for _isMale
  set isMale(bool newValue) {
    _isMale = newValue;
    notifyListeners();
  }

  //getter for color border
  Color get titleColor => _isMale ? Colors.blue : Colors.pink;
  //getter for color text and icon male
  Color get colorMale => _isMale ? Colors.blue : Colors.grey;
  //getter for color text and icon female
  Color get colorFemale => _isMale ? Colors.grey : Colors.pink;
}
