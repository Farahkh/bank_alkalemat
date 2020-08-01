import 'package:bankalkalemat/WordModel.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'WordsBankModel.dart';

class Filter with ChangeNotifier {
  int _wordLetters;
  int _wordWieght;
  int _wordType;
  Map params = new Map<String, int>();
  List<WordModel> words;
  List typeActiveButtons = new List();
  List lettersActiveButtons = new List();
  List weightActiveButtons = new List();

  Filter() {
    loadPreferences();
  }



  int get wordLetters => _wordLetters;

  int get wordWieght => _wordWieght;

  int get wordType => _wordType;

  set wordLetters(int value) {
    _wordLetters = value;
    if (_wordLetters != null) {
      params.update('letters', (e) => _wordLetters, ifAbsent: () => _wordLetters);
    } else {
      params.remove('letters');
      lettersActiveButtons.clear();
    }
    notifyListeners();
    savePreferences();
  }

  set wordWieght(int value) {
    _wordWieght = value;
    if (_wordWieght != null) {
      params.update('wieght', (e) => _wordWieght,
          ifAbsent: () => _wordWieght);
    } else {
      params.remove('wieght');
      weightActiveButtons.clear();
    }
    notifyListeners();
    savePreferences();
  }

  set wordType(int value) {
    _wordType = value;
    if (_wordType != null) {
      params.update('type', (e) => _wordType,
          ifAbsent: () => _wordType);
    } else {
      params.remove('type');
      typeActiveButtons.clear();
    }
    notifyListeners();
    savePreferences();
  }

  void reset(){
    params.clear();
     _wordLetters = 0;
     _wordWieght= 0;
     _wordType= 0;

     typeActiveButtons.clear();
     lettersActiveButtons.clear();
     weightActiveButtons.clear();
  }

  savePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('letters', _wordLetters);
    prefs.setInt('wieght', _wordWieght);
    prefs.setInt('type', _wordType);
  }

  loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int wordLetters = prefs.getInt('letters');
    int wordWeight = prefs.getInt('wieght');
    int wordType = prefs.getInt('type');

    if (wordLetters != null) _wordLetters = wordLetters;
    if (wordWeight != null) _wordWieght = wordWeight;
    if (wordType != null) _wordType = wordType;
  }

  WordBankModel filterList(WordBankModel wordsList) {
    for (int i = 0; i <= params.length - 1; i++) {
      if (i == 0) {
        switch (params.keys.elementAt(0)) {
          case 'letters':
            words = wordsList.words
                .where((e) => e.word_letters == params['letters'] )
                .toList();
            break;
          case 'wieght':
            words = wordsList.words
                .where((e) =>
                    e.word_type == params['wieght'])
                .toList();
            break;
          case 'type':
            words = wordsList.words
                .where((e) => e.word_wieght == params['type'])
                .toList();
            break;
        }
      } else {
        switch (params.keys.elementAt(i)) {
          case 'letters':
            words = words
                .where((e) => e.word_letters == params['letters'])
                .toList();
            break;
          case 'wieght':
            words = words
                .where((e) =>
                    e.word_wieght == params['wieght'])
                .toList();
            break;
          case 'type':
            words = words
                .where((e) => e.word_type == params['type'])
                .toList();
            break;
        }
      }
    }
//    activeButtonsList(words);
    return WordBankModel(words: words);
  }

  void activeButtonsList(List wordsList) {
    lettersActiveButtons.clear();
    typeActiveButtons.clear();
    weightActiveButtons.clear();
    wordsList.forEach((element) {
      lettersActiveButtons.add(element.word_letters);
      weightActiveButtons.add(element.word_type);
      typeActiveButtons.add(element.word_wieght);
    });
  }

  bool typeButtonStatus(int buttonValue) {
    if (params.isEmpty) {
      return true;
    } else {
      if (typeActiveButtons.isNotEmpty) {
        if (typeActiveButtons.contains(buttonValue))
          return true;
        else
          return false;
      } else
        return true;
    }
  }

  bool lettersButtonStatus(int buttonValue) {
    if (params.isEmpty) {
      return true;
    } else {
      if (lettersActiveButtons.isNotEmpty) {
        if (lettersActiveButtons.contains(buttonValue))
          return true;
        else
          return false;
      } else
        return true;
    }
  }

  bool weightButtonStatus(int buttonValue) {
    if (params.isEmpty) {
      return true;
    } else {
      if (weightActiveButtons.isNotEmpty) {
        if (weightActiveButtons.contains(buttonValue))
          return true;
        else
          return false;
      } else
        return true;
    }
  }
}
