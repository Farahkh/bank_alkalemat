import 'package:flutter/cupertino.dart';

class Filter extends ChangeNotifier{
  String _sokonType;
  String _rythmicWieght;
  String _soundWieght;

  set sokonType(String value) {
    _sokonType = value;
    notifyListeners();
  }

  String get sokonType => _sokonType;


  String get rythmicWieght => _rythmicWieght;

  String get soundWieght => _soundWieght;

  set rythmicWieght(String value) {
    _rythmicWieght = value;
    notifyListeners();
  }

  set soundWieght(String value) {
    _soundWieght = value;
    notifyListeners();
  }


}