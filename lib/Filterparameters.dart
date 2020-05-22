import 'package:bankalkalemat/WordModel.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'WordsBankModel.dart';

class Filter with ChangeNotifier {
  int _sokonType;
  int _rythmicWieght;
  int _soundWieght;
  Map params = new Map<String, int>();
  List<WordModel> words;
  List soundActiveButtons = new List();
  List sokonActiveButtons = new List();
  List rythmicActiveButtons = new List();

  Filter() {
    loadPreferences();
  }

  int get sokonType => _sokonType;

  int get rythmicWieght => _rythmicWieght;

  int get soundWieght => _soundWieght;

  set sokonType(int value) {
    _sokonType = value;
    if (_sokonType != null) {
      params.update('sokonType', (e) => _sokonType, ifAbsent: () => _sokonType);
    } else {
      params.remove('sokonType');
      sokonActiveButtons.clear();
    }
    notifyListeners();
    savePreferences();
  }

  set rythmicWieght(int value) {
    _rythmicWieght = value;
    if (_rythmicWieght != null) {
      params.update('rythmicWieght', (e) => _rythmicWieght,
          ifAbsent: () => _rythmicWieght);
    } else {
      params.remove('rythmicWieght');
      rythmicActiveButtons.clear();
    }
    notifyListeners();
    savePreferences();
  }

  set soundWieght(int value) {
    _soundWieght = value;
    if (_soundWieght != null) {
      params.update('soundWieght', (e) => _soundWieght,
          ifAbsent: () => _soundWieght);
    } else {
      params.remove('soundWieght');
      soundActiveButtons.clear();
    }
    notifyListeners();
    savePreferences();
  }

  savePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('sokonType', _sokonType);
    prefs.setInt('rythmicWieght', _rythmicWieght);
    prefs.setInt('soundWieght', _soundWieght);
  }

  loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int sokonType = prefs.getInt('sokonType');
    int rythmicWieght = prefs.getInt('rythmicWieght');
    int soundWieght = prefs.getInt('soundWieght');

    if (sokonType != null) _sokonType = sokonType;
    if (rythmicWieght != null) _rythmicWieght = rythmicWieght;
    if (soundWieght != null) _soundWieght = soundWieght;
  }

  WordBankModel filterList(WordBankModel wordsList) {
    for (int i = 0; i <= params.length - 1; i++) {
      print('the key at index $i is ${params.keys.elementAt(i)}');
      if (i == 0) {
        switch (params.keys.elementAt(0)) {
          case 'sokonType':
            words = wordsList.words
                .where((e) => e.sokonType == params['sokonType'].toString())
                .toList();
            break;
          case 'rythmicWieght':
            words = wordsList.words
                .where((e) =>
                    e.rythmicWieght == params['rythmicWieght'].toString())
                .toList();
            break;
          case 'soundWieght':
            words = wordsList.words
                .where((e) => e.soundWieght == params['soundWieght'].toString())
                .toList();
            break;
        }
      } else {
        switch (params.keys.elementAt(i)) {
          case 'sokonType':
            words = wordsList.words
                .where((e) => e.sokonType == params['sokonType'].toString())
                .toList();
            break;
          case 'rythmicWieght':
            words = wordsList.words
                .where((e) =>
                    e.rythmicWieght == params['rythmicWieght'].toString())
                .toList();
            break;
          case 'soundWieght':
            words = wordsList.words
                .where((e) => e.soundWieght == params['soundWieght'].toString())
                .toList();
            break;
        }
      }
    }
    activeButtonsList(words);
    return WordBankModel(words: words);
  }

  void activeButtonsList(List wordsList) {
    sokonActiveButtons.clear();
    soundActiveButtons.clear();
    rythmicActiveButtons.clear();
    wordsList.forEach((element) {
      sokonActiveButtons.add(element.sokonType);
      print('soundActiveButtons is $sokonActiveButtons');
      rythmicActiveButtons.add(element.rythmicWieght);
      print('rythmicActiveButtons is $rythmicActiveButtons');
      soundActiveButtons.add(element.soundWieght);
      print('soundActiveButtons is $soundActiveButtons');
    });
  }

  bool acousticButtonStatus(int buttonValue) {
    if (params.isEmpty) {
      return true;
    } else {
      if (soundActiveButtons.isNotEmpty) {
        if (soundActiveButtons.contains(buttonValue.toString()))
          return true;
        else
          return false;
      } else
        return true;
    }
  }

  bool sokonButtonStatus(int buttonValue) {
    if (params.isEmpty) {
      return true;
    } else {
      if (sokonActiveButtons.isNotEmpty) {
        if (sokonActiveButtons.contains(buttonValue.toString()))
          return true;
        else
          return false;
      } else
        return true;
    }
  }

  bool rythmicButtonStatus(int buttonValue) {
    if (params.isEmpty) {
      return true;
    } else {
      if (rythmicActiveButtons.isNotEmpty) {
        if (rythmicActiveButtons.contains(buttonValue.toString()))
          return true;
        else
          return false;
      } else
        return true;
    }
  }
}
